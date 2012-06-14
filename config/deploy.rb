set :user, "paulsutcliffe"
set :domain, "djpaulsutcliffe.com"
set :project, "paulsutcliffe"
set :application, "paulsutcliffe"
set :applicationdir, "/home/paulsutcliffe/paulsutcliffe"
set :repository,  "https://github.com/paulsutcliffe/paulsutcliffe.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :scm_passphrase, ""
set :branch, "master"
set :scm_verbose, true
role :web, "djpaulsutcliffe.com"                          # Your HTTP server, Apache/etc
role :app, "djpaulsutcliffe.com"                          # This may be the same as your `Web` server
role :db,  "paulsutcliffedb.avance.kosmyka.com", :primary => true # This is where Rails migrations will run
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
