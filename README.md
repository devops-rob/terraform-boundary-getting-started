# Terraform Module: HashiCorp Boundary starter resources

This module will provision the main resources in Boundary to allow you to log in for the first time and configure Boundary as per your organisations requirements.

## Requirements

This module assumes you have a Boundary cluster provisioned with a database which has been initialised with no resources.

## Example usage

```hcl
provider "boundary" {
  addr             = "http://boundary.container.shipyard.run:9200/"
  recovery_kms_hcl = <<EOT
kms "aead" {
  purpose = "recovery"
  aead_type = "aes-gcm"
  key = "nIRSASgoP91KmaEcg/EAaM4iAkksyB+Lkes0gzrLIRM="
  key_id = "global_recovery"
}
EOT
}

module "boundary_starter_org" {
  source = "devops-rob/getting-started/boundary"

  login_account_password = "foofoofoo"
}
```

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.