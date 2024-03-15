#!/bin/bash

echo "Creating override at: /etc/systemd/system/httpd.service.d/override.conf"
URL="https://raw.githubusercontent.com/marcpope/privatetmp_fix/main/override.conf"
curl -s $URL > /etc/systemd/system/httpd.service.d/override.conf

echo "Reloading Apache Daemon..."
systemctl daemon-reload

echo "Reloading Apache httpd..."
systemctl restart httpd

echo "Done!"
