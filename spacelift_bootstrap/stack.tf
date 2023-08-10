resource "spacelift_stack" "management_stack" {
  administrative    = true
  autodeploy        = true
  branch            = "main"
  description       = "The Stack to Manage Stacks"
  name              = "Spacelift Stack Manager"
  project_root      = "spacelift_mgmt"
  repository        = "nac-spacelift"
  terraform_version = var.terraform_version
}
