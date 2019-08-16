#!/bin/bash

# set param
TABLEAU_SERVER_URL=
TABLEAU_SERVER_LOGIN_ID=
TABLEAU_SERVER_LOGIN_PASS=
# tableau twb in local
TWB_PATH_LOCAL=
# in docker (ex. var/test.twb)
TWB_PATH_DOCKER=
OVERWRITE_WB_NAME=
PJ_NAME=
DB_USERNAME=
DB_PASSWPRD=

# copy from local to docker
docker cp $TWB_PATH_LOCAL tabcmd:$TWB_PATH_DOCKER
# exec publish on docker
docker exec tabcmd bash -c "source var/publish.sh $TABLEAU_SERVER_URL $TABLEAU_SERVER_LOGIN_ID $TABLEAU_SERVER_LOGIN_PASS $TWB_PATH_DOCKER $OVERWRITE_WB_NAME $PJ_NAME $DB_USERNAME $DB_PASSWPRD"
