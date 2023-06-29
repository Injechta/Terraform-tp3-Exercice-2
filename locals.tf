locals {
  vnet_name      = "my-vnet"
  address_space  = "10.1.0.0/16"
  location       = "westeurope"
  resource_group = "Gregory_E"

  subnets = {
    "subnet-bastion" = "10.1.0.0/24"
    "subnet-app"     = "10.1.1.0/24"
    "subnet-db"      = "10.1.2.0/24"
  }

  tags = {
    TP       = "terraform-azure-vnet-dynamic"
    Owner    = "GrOoT"
    DeployID = formatdate("DD-MM-YYYY", timestamp())
  }
}
