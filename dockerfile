FROM nodered/node-red-docker

COPY config/node-cert.pem /usr/src/node-red/ssl/
COPY config/node-key.pem /usr/src/node-red/ssl/
COPY config/settings.js /usr/src/node-red/node_modules/node-red/settings.js