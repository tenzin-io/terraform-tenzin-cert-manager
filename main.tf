resource "helm_release" "cert_manager" {
  name             = "cert-manager"
  namespace        = local.namespace
  create_namespace = true
  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  version          = "1.10.1"

  set {
    name  = "installCRDs"
    value = true
  }
}

resource "kubernetes_secret_v1" "cloudflare_api_token" {
  metadata {
    name      = "cloudflare-api-token"
    namespace = local.namespace
  }

  data = {
    token = var.cloudflare_api_token
  }

  depends_on = [helm_release.cert_manager]
}

resource "helm_release" "cert_manager_cluster_issuer" {
  depends_on = [helm_release.cert_manager]
  namespace  = local.namespace
  name       = "cert-manager-cluster-issuer"
  chart      = "${path.module}/files/cert-manager-cluster-issuer"
  set {
    name  = "cloudflare.apiToken.secretName"
    value = kubernetes_secret_v1.cloudflare_api_token.metadata.0.name
  }
  set {
    name  = "cloudflare.email"
    value = var.cloudflare_api_email
  }
}
