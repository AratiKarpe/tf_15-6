


variable "amiid" {
    default = ["ami-0760850bc7c383be7" , "ami-008f67e1a087a7449"]
}

variable "instancetype" {
    default = {
        instancetypemicro = "t3.mcro"
        instancetypesmall = "t4.small"

    }
}


variable "anyds" {
    default = {
        sg ="sg-051c13ca487ff9c4f" #string
        instcount = 1
        apitterm =["true" ,"false"]
        keymap = {
            key1 = "sample" ,
            key2 = "ohiokpb64"
        }
    }
}