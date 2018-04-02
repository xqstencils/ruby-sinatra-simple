#!/bin/bash

heroku git:remote -a $HEROKU_APP_NAME
git push --force git@heroku.com:$HEROKU_APP_NAME.git HEAD:refs/heads/master
sleep 5
heroku restart
