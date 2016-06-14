#!/bin/sh

. /opt/bitnami/scripts/setenv.sh
cd /opt/bitnami/apps/redmine/htdocs
bin/rake generate_secret_token
bin/rake db:migrate RAILS_ENV="production"

bin/rake redmine:load_default_data RAILS_ENV="production" REDMINE_LANG="en"
                    