resource random_string main {
  length  = 8
  upper   = false
  special = false
}

resource azurerm_resource_group main {
  name     = "rg-${local.name}-${random_string.main.result}"
  location = var.location

  tags = {
    Env           = var.env_name
    Owner         = var.owner
    CostCenter    = var.cost_center
    Updated       = timestamp()
  }
}
