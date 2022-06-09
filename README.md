# Terraform Module with for_each feature
This repo contains simple code that it can demonstrate the use of meta-argument [for-each](https://www.terraform.io/language/meta-arguments/for_each) . 

It creates 3 random_pet modules with the following names:

`module.pet["first"].random_pet.pet`

`module.pet["second"].random_pet.pet`

`module.pet["third"].random_pet.pet`

# Purpose of for-each

The meta-argument **for-each** can be used to create multiple pre-defined modules from a set or map instead of creating them manually and duplicating the modules. It has been added to Terraform in version 0.12.

The sample in the repo uses **random_pet** module. 

# Prerequisite
You need to have [Terraform CLI >0.13](https://learn.hashicorp.com/tutorials/terraform/install-cli) installed on you workstation. 

# How to use the repo

* Clone this repo locally to a folder of your choice
```
git clone https://github.com/51r/tf-module-for_each.git
```

* Make sure you are in the main directory of the repo:
```
cd tf-module-for_each
```

* initialize Terraform  
```
terraform init
```

* Check the plan in order to see the changes which terraform is going to made.
```
terraform plan
```

* Apply the plan which terraform is going to execute based on our configuration (main.tf)
```
terraform apply
```

