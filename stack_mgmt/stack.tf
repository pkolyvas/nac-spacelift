resource "spacelift_stack" "spacelift_management" {
  administrative    = true
  autodeploy        = true
  branch            = "master"
  description       = "The Stack to Manage Stacks"
  name              = "Spacelift Stack Manager"
  project_root      = "spacelift_mgmt"
  repository        = "nac-spacelift"
  terraform_version = var.terraform_version
}