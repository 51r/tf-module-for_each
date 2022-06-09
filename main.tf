variable "sample" {
  type = map(any)
  default = {
    "1.txt"  = "file number 1"
    "2.txt" = "file number 2"
    "3.txt"  = "file number 3"
  }

}

module "local" {
  source   = "./local"
  for_each = var.sample
  name     = each.key
  content  = each.value
}