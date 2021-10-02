ui = true

backend "consul" {
  address = "consul:8500"
  advertise_addr = "http://127.0.0.1:8200"
  tls_ca_file = "/certs/ca.crt"
  tls_cert_file = "/certs/domain.crt"
  tls_key_file = "/certs/domain.key"
  path = "vault"
  scheme = "http"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 0
  tls_ca_file = "/certs/ca.crt"
  tls_cert_file = "/certs/domain.crt"
  tls_key_file = "/certs/domain.key"
}

disable_mlock = true
max_lease_ttl = "262980h"
default_lease_ttl = "262980h"
