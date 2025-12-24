#!/bin/bash

# Create certs directory
mkdir -p certs

# Generate private key
openssl genrsa -out certs/fleet-server.key 2048

# Generate certificate signing request
openssl req -new -key certs/fleet-server.key -out certs/fleet-server.csr -subj "/CN=fleet-server/O=Elastic/C=US"

# Generate self-signed certificate (valid for 365 days)
openssl x509 -req -days 365 -in certs/fleet-server.csr -signkey certs/fleet-server.key -out certs/fleet-server.crt

# Set permissions
chmod 644 certs/fleet-server.crt
chmod 600 certs/fleet-server.key

echo "Certificates generated in ./certs directory"
ls -la certs/
