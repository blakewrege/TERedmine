#!/bin/sh
cd /home/bitnami/apps/redmine/htdocs/
bundle exec rake -f /home/bitnami/apps/redmine/htdocs/Rakefile redmine:email:receive_imap RAILS_ENV=production host=imap.gmail.com port=993 ssl=1 username=redmine.thermaltech@gmail.com password=two%milk folder=Support project=IT unknown_user=accept no_permission_check=1 \
allow_override=project,tracker,status,priority,category,assigned_to,fixed_version,start_date,due_date,estimated_hours,done_ratio
