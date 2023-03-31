data "aws_ami" "windows_serverwithsql2019" {
     most_recent = true     
filter {
       name   = "name"
       values = ["Windows_Server-2022-English-Full-SQL_2019_Standard-*"]  
  }     
filter {
       name   = "virtualization-type"
       values = ["hvm"]  
  }     
owners = ["801119661308"] # Canonical
}

data "aws_ami" "windows_server_2022" {
     most_recent = true     
filter {
       name   = "name"
       values = ["Windows_Server-2022-English-Full-Base-*"]  
  }     
filter {
       name   = "virtualization-type"
       values = ["hvm"]  
  }     
owners = ["801119661308"] # Canonical
}
