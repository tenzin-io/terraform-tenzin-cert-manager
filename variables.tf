variable "cert_manager_namespace" {
  type        = string
  default     = "cert-manager"
  description = "The namespace to deploy cert-manager"
}

variable "cert_issuer_name" {
  type        = string
  default     = "lets-encrypt"
  description = "The certificate issuer name"
}

variable "cert_registration_email" {
  type        = string
  description = "Email address used for certificate registration"
}

variable "cloudflare_api_token" {
  type        = string
  description = "CloudFlare API token"
  sensitive   = true
}

