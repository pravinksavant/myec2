resource "aws_instance" "myec2" {    
    ami = "ami-04db49c0fb2215364"
    instance_type= "${var.instance_type}"
    key_name= "aws-demo-lin-mumbai"
    security_groups = ["${aws_security_group.webserver_sg.name}"]
    tags = {
        Name = "DemoServer"
    }
    user_data = "${file("${path.module}/user_data.sh")}"
}