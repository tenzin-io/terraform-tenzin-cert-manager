variable "cloudflare_api_email" {
  type        = string
  description = "Email address associated with the CloudFlare API token"
}

variable "cloudflare_api_token" {
  type        = string
  description = "CloudFlare API token"
  sensitive   = true
}

