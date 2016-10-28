#!/bin/bash

/etc/init.d/mongod --repair --dbpath /home/rahata/apps/mongodb/data/db
/etc/init.d/mongod --config /home/rahata/apps/mongodb/mongod.config

