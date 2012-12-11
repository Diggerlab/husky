set :rails_env, "production" 
set :bundle_without, [:darwin, :development, :test]

role :web, "115.239.196.124"                          # Your HTTP server, Apache/etc
role :app, "115.239.196.124"                          # This may be the same as your `Web` server
role :db,  "115.239.196.124", :primary => true        # This is where Rails migrations will run

set :branch, "master"

namespace:deploy do
    namespace:web do       
      before "deploy:finalize_update" do 
        run "cp #{shared_path}/config/database.yml #{release_path}/config/"
      end

      after "deploy:restart", :roles => :app do
        run "touch #{File.join(current_path,'tmp','restart.txt')}"
      end
    end
end

