Source forked from github.com/tinyerp/odoo-docker (tinyerp/debian-openerp:6.1)

Execute docker run -d --name openerp -p 8069:8069 havardline/debian-openerp-no
Browse http://<your server ip address>:8069/
Stop and start again
docker stop openerp
docker start openerp

Manhole access:

OPENERP_IP=$(docker inspect --format='{{.NetworkSettings.IPAddress}}' openerp)
ssh-keygen -R $OPENERP_IP (because Docker assigns the same IP to different hosts)
ssh root@$OPENERP_IP -p 22 (default password password)
Images available:

