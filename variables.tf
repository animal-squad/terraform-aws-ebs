variable "name_prefix" {
  description = "EBS 구성 요소들의 이름과 tag을 선언하는데 사용될 prefix."
  type        = string

  validation {
    condition     = length(var.name_prefix) <= 50
    error_message = "이름에 사용될 prefix는 50자를 넘을 수 없습니다."
  }
}

variable "instance_id" {
  description = "EBS를 부착할 EC2의 id"
  type        = string
}

variable "az" {
  description = "EBS의 AZ"
  type        = string
}

variable "ebs_size" {
  description = "EC2에서 사용 할 EBS의 용량"
  type        = number
}
