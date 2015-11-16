# Stopping and remiving existing container
docker stop openerp_testcontainer
docker rm openerp_testcontainer

# Removing old image, building new image
docker rmi openerp_testimage
docker build -t openerp_testimage .

# Starting new container
docker run -d --name openerp_testcontainer -p 8069:8069 openerp_testimage
