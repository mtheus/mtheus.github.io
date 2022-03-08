#!/bin/bash
IP=$(curl https://ifconfig.me/)
echo "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><meta http-equiv=\"refresh\" content=\"0; url=http://$IP:8080\"><script type=\"text/javascript\">window.location.href= \"http://$IP:8080\"</script><title>Page Redirection</title></head><body>If you are not redirected automatically, follow this <a href='http://$IP:8080'>link</a>.</body></html>" > index.html
git commit -am "IP Update"
git push 

