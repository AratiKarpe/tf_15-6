provider "aws" {
  region     = "us-east-2"
  profile  =  "configs" 
} 



resource "aws_instance" "webserver" {
   #example of count loop
   key_name = "sample"
   ami = "ami-08f44e8eca9095668 "
   instance_type = "t3-micro"
   vpc_security_group_ids = ["sg-0727b55b19685c100"]
   count = 3
   

}

resource "aws_iam_user" "userrb" {
    #example of for_each loop
    for_each = toset(var.userlist)
    name = each.value
}

variable "userlist" {
    default = ["virat" , "rohit" , "dhoni"]
}

output "aws_user_name" {
    #example of for loop
    value =[ for users in var.userlist:
                aws_iam_user.userrb[users].name]
}