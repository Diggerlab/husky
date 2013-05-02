set :rails_env, "production" 

role :web, "www.chichiapp.com"                          # Your HTTP server, Apache/etc
role :app, "www.chichiapp.com"                          # This may be the same as your `Web` server
# role :db,  "", :primary => true        # This is where Rails migrations will run

set :branch, "master"

