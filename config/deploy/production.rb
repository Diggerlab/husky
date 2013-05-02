set :rails_env, "production" 

role :web, "115.239.196.124"                          # Your HTTP server, Apache/etc
role :app, "115.239.196.124"                          # This may be the same as your `Web` server
role :db,  "115.239.196.124", :primary => true        # This is where Rails migrations will run

set :branch, "master"

