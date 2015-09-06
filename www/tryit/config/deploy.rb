# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'tryit'
set :repo_url, 'https://github.com/jeff-r/tryit.git'
set :repo_tree, 'www/tryit' # relative path to project root in repo
set :unicorn_rack_env, "production"
set :deploy_to, '/var/www/tryit'

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('tmp')

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
    # Here we can do anything such as:
    # within release_path do
    #   execute :rake, 'cache:clear'
    # end
  end
end

after 'deploy:publishing', 'deploy:restart'
task :restart do
  invoke 'unicorn:reload'
end

end