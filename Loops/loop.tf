provider "aws" {
  region     = "us-east-2"
  profile  =  "configs" 
} 



resource "aws_instance" "webserver" {
   #example of count loop
   key_name = 
   ami =
   instance_type = 
   vpc_security_group_ids = 
   #count = 3
   

}

resource "aws_iam_user" "userrb" {
    #example of for_each loop
    for_each = toset(var.uerlist)
    name = each.value
}

variable "userlist" {
    default = ["virat" , "rohit" , "dhoni"]
}

output "aws_user_name" {
    #example of for loop
    value =[for users in var.userlist:
                aws_iam_userrb[users].name]
}