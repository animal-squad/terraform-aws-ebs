resource "aws_ebs_volume" "ebs" {
  availability_zone = var.az
  type              = "gp3"
  size              = var.ebs_size

  tags = {
    Name = "${var.name_prefix}-ebs"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs.id
  instance_id = var.instance_id
}
