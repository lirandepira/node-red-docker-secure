The container has been pulled from:
https://hub.docker.com/r/nodered/node-red-docker/

The script used to generate the input data for the CA is the following:

"openssl genrsa -out node-key.pem 2048 \
&&
openssl req \
  -new \
  -sha256 \
  -subj "/C=it/ST=SI/L=me/O=unime/CN=localhost" \
  -key node-key.pem \
  -out node-csr.pem \
&& \
openssl x509 -req \
   -in node-csr.pem -signkey \
   node-key.pem -out node-cert.pem"
