resource "aws_security_group" "webserver_sg" {
    name = "webserver_mysg"
}

resource "aws_security_group_rule" "allow_http"{
    type = "ingress"
    security_group_id = "${aws_security_group.webserver_sg.id}"
    from_port = var.http_port
    to_port = var.http_port
    protocol = "tcp"
    cidr_blocks = [var.from_source]
    
}

resource "aws_security_group_rule" "allow_http"{
    type = "ingress"
    security_group_id = "${aws_security_group.webserver_sg.id}"
    from_port = var.http_port
    to_port = var.http_port
    protocol = "tcp"
    cidr_blocks = [var.from_source]
    
}

resource "aws_security_group_rule" "allow_ssh"{
    type = "ingress"
    security_group_id = "${aws_security_group.webserver_sg.id}"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [var.from_source]
    
}

resource "aws_security_group_rule" "allow_outgoing"{
    type = "egress"
    security_group_id = "${aws_security_group.webserver_sg.id}"
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = [var.from_source]
    
}

resource "aws_security_group_rule" "allow_25000"{
    type = "ingress"
    security_group_id = "${aws_security_group.webserver_sg.id}"
    from_port = 25000
    to_port = 25000
    protocol = "tcp"
    cidr_blocks = [var.from_source]
    
}

 /*   ingress{
        from_port = var.http_port
        to_port = var.http_port
        protocol = "tcp"
        cidr_blocks = [var.from_source]
    }

    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.from_source]
    }

    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [var.from_source]
    }

}
*/