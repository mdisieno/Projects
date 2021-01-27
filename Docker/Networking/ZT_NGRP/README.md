ZT_NGRP - A container that routes all nginx reverse proxy requests via NGINX Proxy Manager over ZT back to your home machines from a VPS.

* This will help those who have ISP's that block 80/443 ports due to "web hosting" regulations. This bypass will let you use a VPS and ZT as a means to reroute that traffic and create a front facing node in the network.
* This affords you the ability to travel across the network to any ZT client. You can use one domain name for multiple sites, servers, pages, etc.
* This pairs beautifully with CloudFlare's free tier. You can use their CDN to mask and protect the VPS, which is then protecting your clients, which is then protected by ZT's ip allocation/tunneling.

Credit to the Nginx reverse proxy goes to JC21: https://nginxproxymanager.com/
This package will include the self contained package from JLesage: https://hub.docker.com/r/jlesage/nginx-proxy-manager

