#!/bin/bash

echo "Creating override at: /etc/systemd/system/httpd.service.d/override.conf"
URL=""
curl $URL > /etc/systemd/system/httpd.service.d/override.conf

echo "Reloading Apache Daemon..."
systemctl daemon-reload

echo "Reloading Apache httpd..."
systemctl restart httpd

echo "Done!"
