variable "kubernetes_namespace" {
  description = "Kubernetes Namespace name"
  type        = string
}

variable "create_kubernetes_namespace" {
  description = "Should the module create the namespace"
  type        = bool
  default     = true
}

variable "create_kubernetes_service_account" {
  description = "Should the module create the Service Account"
  type        = bool
  default     = true
}

variable "kubernetes_service_account" {
  description = "Kubernetes Service Account Name"
  type        = string
}

variable "kubernetes_svc_image_pull_secrets" {
  description = "list(string) of kubernetes imagePullSecrets"
  type        = list(string)
  default     = []
}

variable "irsa_iam_policies" {
  type        = list(string)
  description = "IAM Policies for IRSA IAM role"
  default     = []
}

variable "irsa_iam_role_name" {
  type        = string
  description = "IAM role name for IRSA"
  default     = "irsa_iam_role"
}

variable "irsa_iam_role_path" {
  description = "IAM role path for IRSA roles"
  type        = string
  default     = "/"
}

variable "irsa_iam_permissions_boundary" {
  description = "IAM permissions boundary for IRSA roles"
  type        = string
  default     = null
}

variable "eks_oidc_provider_arn" {
  description = "EKS OIDC Provider ARN e.g., arn:aws:iam::<ACCOUNT-ID>:oidc-provider/<var.eks_oidc_provider>"
  type        = string
}

variable "account_id" {
  description = "Account ID of AWS Account"
  type        = string
}

variable "tags" {
  description = "Additional tags (e.g. `map('BusinessUnit`,`XYZ`)"
  type        = map(string)
  default     = {}
}

variable "irsa_assume_role_policy" {
  description = "Custom Trust Relationship policy for IAM Role"
  type        = any
  default     = null
}