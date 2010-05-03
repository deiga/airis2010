require 'config/capistrano_database'

# Copy settings
set :use_sudo, false
set :deploy_via, :copy
set :copy_strategy, :export
set :copy_compression, :gzip

# needs to be set when rake is not in standard location
set :rake, "/usr/bin/rake"
set :rails_env,      "development"
set :migrate_env,    ""
set :migrate_target, :current

# Server settings

set :application, "airis2010"

set :repository,  "git://github.com/deiga/airis2010.git"
set :branch, "master"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/home/airedale/cap"

set :user, "airedale"
set :scm_username, "deiga"

role :web, "airedalenterrieri.fi"                   # Your HTTP server, Apache/etc
role :app, "airedalenterrieri.fi", :primary => true # This may be the same as your `Web` server
role :db,  "airedalenterrieri.fi", :primary => true # This is where Rails migrations will run

namespace :deploy do
#   task :start {}
#   task :stop {}
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
  desc "Tell Mongrel to restart the app"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end

  # desc "Reset database on server"
  #   task :reset do
  #     run "#cd #{current_path} ; #{rake} db:reset"
  #   end

  #desc "Run migrate with trace"
  #task :migrate do
  #  run "cd #{current_path}; #{rake} --trace RAILS_ENV=#{rails_env} db:migrate"
  #end
end

after "deploy:symlink", "deploy:migrate"

# namespace :app do
#   desc "Run sample data on production"
#   task :sample do
#     run "export RAILS_ENV=production ; cd #{current_path} ; #{rake} db:seed"
#   end
# end

namespace :logs do
  desc "Show last 100 lines from production log"
  task :prod do
    run "tail -n 100 #{current_path}/log/production.log"
  end
end