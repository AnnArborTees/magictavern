# config valid only for current version of Capistrano
lock "3.8.0"

set :application, 'magic-tavern'
set :repo_url, 'git@github.com:annarbortees/magictavern.git'
set :rvm_ruby_version, 'ruby-2.4.0'
set :rvm_task_ruby_version, 'ruby-2.4.0'
set :deploy_to, '/home/ubuntu/RailsApps/partners/magictavern'

set :linked_files, %w{config/secrets.yml}

after 'deploy:publishing', 'deploy:restart'

# set :linked_dirs, %w{solr}

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
