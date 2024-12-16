#!/bin/bash
#
#Ask username
echo Hello, what is your username?
read varname
echo Your username is set to: $varname
#Clone Snorql-UI
echo Now cloning the Snorql-UI git
git clone git@github.com:wikipathways/Snorql-UI.git
#Create directories
echo Creating some directories
mkdir db
mkdir db/database
#Change paths to use correct username
echo Now adjusting the filepaths in docker-compose.yml to include your username
sed 's/{username}/'$varname'/g' docker-compose-template.yml > docker-compose.yml
#Run the docker
echo Starting the docker image...
docker compose up -d
