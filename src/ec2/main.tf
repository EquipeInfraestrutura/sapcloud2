# Create a EC2 Instance (Windows Server 2022)
resource "aws_instance" "windows_client" {
  count                  = var.instance_count
  instance_type          = var.instance_type_client
  ami                    = data.aws_ami.windows_server_2022.id
  key_name               = var.key_pair
  vpc_security_group_ids = var.sg_public
  subnet_id              = var.public_subnet

  tags = {
    Name = "SAP_Client_Windows-${count.index + 1}"
  }

  root_block_device {
    volume_size = var.volume_size
  }
}

# Create and assosiate an Elastic IP to client Instance
resource "aws_eip" "eip_pub" {
  count    = length(var.instance_count)
  instance = aws_instance.windows_client[count.index].id
}

# Create a EC2 Instance (Windows Server with SQL Server 2022)
resource "aws_instance" "windows_sql" {
  count                  = var.instance_count
  instance_type          = var.instance_type_sql
  ami                    = data.aws_ami.windows_serverwithsql2019.id
  key_name               = var.key_pair
  vpc_security_group_ids = var.sg_private
  subnet_id              = var.private_subnet

  tags = {
    Name = "SAP_SQL_Windows-${count.index + 1}"
  }

  root_block_device {
    volume_size = var.volume_size
  }
}


