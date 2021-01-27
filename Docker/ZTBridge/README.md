This will house a few simple modified Ubuntu Docker containers with various ZT configurations. These configurations will include:

1. ZT_Bridge - A container with ZT/IPTables configurations to pass through ZT traffic to the local network.
   * This will be great for private local networks and those who want to access local assets remotely via ZT.

2. ZT_VPN - A container that ZT/IPTables configurations to pass any traffic directly through the ZT network to a master node.
   * Roll your own VPN for friends and family so that users can use ZT to connect. Affords the possibility to share a single VPN service amongst multiple users with my.zt admin.

3. ZT_NGRP - A container that routes all local nginx reverse proxy requests via NGINX Proxy Manager over ZT back to your home machine from a VPS.
   * This will help those who have ISP's that block 80/443 ports due to "web hosting" regulations. This bypass will let you use the VPN as a means to reroute that traffic and create a front facing node that you can house on a cheap VPS.

