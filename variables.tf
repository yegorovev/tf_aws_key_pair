variable "algorithm" {
  description = "Name of the algorithm to use when generating the private key: RSA, ECDSA, ED25519"
  type        = string
  nullable    = false
  default     = "RSA"
}

variable "rsa_bits" {
  description = "When algorithm is RSA, the size of the generated RSA key, in bits"
  type        = number
  nullable    = false
  default     = 2048
}

variable "key_name_prefix" {
  description = "Creates a unique name beginning with the specified prefix"
  type        = string
  nullable    = false
  default     = "terraform-"
}

variable "local_path" {
  description = "Local path to save a private key"
  type        = string
  nullable    = false
  default     = "./"
}