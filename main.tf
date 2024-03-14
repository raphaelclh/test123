provider "azurerm" {
  features {}
}

resource "azurerm_virtual_machine_extension" "customscript" {
  name                 = "custom-script"
  virtual_machine_id   = "/subscriptions/07ca9123-af4f-4587-96c6-4eb71a00aeb6/resourceGroups/south-ease-asia/providers/Microsoft.Compute/virtualMachines/az"
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"

  settings = <<SETTINGS
{
    "fileUris": [
        "https://raw.githubusercontent.com/raphaelclh/test123/main/test.sh",
        "https://raw.githubusercontent.com/raphaelclh/test123/main/test2.sh"
    ],
    "commandToExecute": "bash test.sh input2"
}
SETTINGS
}
