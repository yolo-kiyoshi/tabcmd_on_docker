#!/bin/bash
# set env path of tabcmd
source /etc/profile.d/tabcmd.sh

# login
echo "starting login."
tabcmd --accepteula login -s $1 --username $2 --no-certcheck --password $3
echo "completed login."

# Publish
echo "starting publish."
tabcmd publish $4 -o $5 -r $6 --db-username $7 --db-password $8 --save-db-password --save-oauth --no-certcheck
echo "completed publish."

# logout
echo "starting log out."
tabcmd --accepteula logout -s $1 --no-certcheck
echo "completed log out."


