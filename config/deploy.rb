set :user, "paulsutcliffe"
set :domain, "djpaulsutcliffe.com"
set :project, "paulsutcliffe"
set :application, "paulsutcliffe"
set :applicationdir, "/home/paulsutcliffe/paulsutcliffe"
set :repository,  "git@github.com:paulsutcliffe/paulsutcliffe.git"
default_run_options[:pty] = true

ssh_options[:forward_agent] = true
set :git_enable_submodules, 1
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :scm_passphrase, ""
set :branch, "master"
set :deploy_via, :remote_cache
set :git_shallow_clone, 1
set :scm_verbose, true
set :deploy_to, applicationdir

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
set :use_sudo, false
#run "chmod 775 ~/paulsutcliffe/paulsutcliffe/current/public/dispatch.fcgi"
#run "bundle install --deployment"
desc "Fix permissions after code update."
task :after_update_code, :roles => [:app, :db, :web] do
# set permissions
  run "chmod 775 #{application_dir}/current/public/dispatch.fcgi"
  run "cd #{application_dir}/current/; bundle install --deployment"
end
