set :stages, %w(staging production)
set :default_stage, "staging"
require 'capistrano/ext/multistage'
require "rvm/capistrano"

set :application, "husky"
set :repository,  "scm@project.diggerlab.com:husky.git"
set :branch, "master"
set :user, "webuser"
set :use_sudo, false
set :scm, :git

set :deploy_to, "/home/webuser/www/husky"
set :current_path, "#{deploy_to}/current"
set :releases_path, "#{deploy_to}/releases/"
set :shared_path, "#{deploy_to}/shared"
set :maintenance_template_path, "public/update.html"