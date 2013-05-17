set :rails_env, "production" 

role :web, "www.chichiapp.com"                          # Your HTTP server, Apache/etc
role :app, "www.chichiapp.com"                          # This may be the same as your `Web` server
# role :db,  "", :primary => true        # This is where Rails migrations will run

set :branch, "master"

namespace:deploy do
    namespace:app do 
      task:start do
      end
      
      task:stop do
      end

      after "deploy:restart", :roles => :app do
        #add any tasks in here that you want to run after the project is deployed
        run "ln -s #{shared_path}/upload #{current_path}/public/upload"
        run "rm -rf #{release_path}.git"
        run "chmod -R 755 #{current_path}"
      end
    end

end

