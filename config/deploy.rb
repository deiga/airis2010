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

server "airedalenterrieri.fi", :app, :web, :db, :primary => true

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Tell the Server to restart the app"
  task :restart do
    run "touch #{File.join(current_release,'tmp','restart.txt')}"
  end

  # desc "Reset database on server"
  #   task :reset do
  #     run "#cd #{current_path} ; #{rake} db:reset"
  #   end

  desc "Symlink to get outside access working"
  task :symlink_server do
    run "ln -nfs #{current_release} /home/airedale/rails_apps/new"
  end

  desc "Run migrate with trace"
  task :migrate do
    run "cd #{current_release}; #{rake} --trace RAILS_ENV=#{rails_env} db:migrate"
  end
end

after "deploy:symlink", "deploy:symlink_server", "deploy:migrate"

# namespace :app do
#   desc "Run sample data on production"
#   task :sample do
#     run "export RAILS_ENV=production ; cd #{current_path} ; #{rake} db:seed"
#   end
# end

namespace :logs do
  desc "Show last 100 lines from production log"
  task :prod do
    run "tail -n 100 #{current_release}/log/production.log"
  end

  desc "Show last 100 lines from development log"
  task :dev do
    run "tail -n 100 #{current_release}/log/development.log"
  end
end