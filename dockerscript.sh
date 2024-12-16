#!/bin/bash
#Clone Snorql-UI
echo Now cloning the Snorql-UI git
git clone git@github.com:wikipathways/Snorql-UI.git
#Create directories
echo Creating some directories
mkdir db
mkdir db/database
# Remove running instances
docker remove wikipathways-virtuoso wikipathways-snorql
#Run the docker
echo Starting the docker image...
docker compose up -d
