# Example using module defaults

This example uses all of the default configurations in the module and only requires you to provide a password to configure Boundary to use.

This example is aimed at greenfield Boundary deployments and as such will require a recovery KMS stanza for Terraform to authenticate with Boundary.

### Usage

Execute the following commands to run this example:
```shell script
terraform init
terraform plan -out=.tfplan
terraform apply .tfplan
```