# Systemd files

The files in this folder have historically been used for fleet. Seems like fleet is deprecated and Kubernetes is the new hot tool. LTS AS has one server, so fleet feels like overkill. We have decided to port the files we use to systemd.

## These files are rewritten for systemd:

- odoo1.service
- odoo1-db.service

## Routine for enabling .service files

- [ ] Move file to /etc/systemd/system/
- [ ] Test-command: sudo systemctl start <first name of file>
- [ ] sudo systemctl enable <first name of file>
