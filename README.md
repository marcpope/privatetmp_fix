# privatetmp_fix
How to fix Apache's PrivateTmp=True override everytime httpd updates.

One line command, just run this as root (if you trust me):
```
curl -s https://raw.githubusercontent.com/marcpope/privatetmp_fix/main/fix.sh | /bin/bash
```

Here's what it does:

Create file:
```
nano /etc/systemd/system/httpd.service.d/override.conf
```

With this text:
```
[Service]
PrivateTmp=false
```

Reload apache daemon and apache:
```
systemctl daemon-reload
systemctl restart httpd
```

Now, if Apache updates, it won’t override the PrivateTmp=False setting
