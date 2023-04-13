# README
Terraform module that will install cert-manager for my home lab Kubernetes cluster.

<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.9.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.19.0 |

## Resources

| Name | Type |
|------|------|
| [helm_release.cert_manager](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.cert_manager_cluster_issuer](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_secret_v1.cloudflare_api_token](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret_v1) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cert_issuer_name"></a> [cert\_issuer\_name](#input\_cert\_issuer\_name) | The certificate issuer name | `string` | `"lets-encrypt"` | no |
| <a name="input_cert_manager_namespace"></a> [cert\_manager\_namespace](#input\_cert\_manager\_namespace) | The namespace to deploy cert-manager | `string` | `"cert-manager"` | no |
| <a name="input_cert_registration_email"></a> [cert\_registration\_email](#input\_cert\_registration\_email) | Email address used for certificate registration | `string` | n/a | yes |
| <a name="input_cloudflare_api_token"></a> [cloudflare\_api\_token](#input\_cloudflare\_api\_token) | CloudFlare API token | `string` | n/a | yes |
<!-- END_TF_DOCS -->
