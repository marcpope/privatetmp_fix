# privatetmp_fix
How to fix Apache's PrivateTmp=True override everytime httpd updates.

Create a file called this:
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

Now, if Apache updates, it won’t override the value.
