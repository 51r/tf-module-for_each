variable "sample" {
  type    = set(string)
  default = ["first", "second", "third"]

}

module "pet" {
  source   = "github.com/51r/terraform-module"
  for_each = var.sample
}