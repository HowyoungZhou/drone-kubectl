# drone-kubectl

This [Drone](https://drone.io/) plugin allows you to use `kubectl` without messing around with the authentication


## Settings

* `server` - Kubernetes API server URL (default: `https://kubernetes`)
* `user` - Service account name (default: `default`)
* `namespace` - Namespace (default: `default`)
* `ca` - CA certificate (base64 encoded) to use for TLS verification (optional)
* `token` - Service account token to use for authentication
* `token_secret` - Path to a file containing the service account token to use for authentication
* `ca_secret` - Path to a file containing the CA certificate to use for TLS verification
* `namespace_secret` - Path to a file containing the namespace
* `secret_dir` - Path to a directory containing the service account token, CA certificate and namespace