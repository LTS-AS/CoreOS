# This scrit rebuild and deploys havardline/debian-openerp-no
docker build -t havardline/debian-openerp-no ./fleet/openerp
docker push havardline/debian-openerp-no

# Maybe also do something like this in the future?
# fleetctl build fleet/openerp.1.service