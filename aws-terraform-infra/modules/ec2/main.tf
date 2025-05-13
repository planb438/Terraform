resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0" # Update as needed
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
}