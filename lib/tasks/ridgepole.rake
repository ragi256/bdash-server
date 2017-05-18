namespace :ridgepole do
  desc 'Apply schema definition'
  task :apply do
    sh 'ridgepole', '--config', 'config/database.yml', '--env', ENV.fetch('RAILS_ENV', 'development'), '--apply', '--file', 'schema/Schemafile'
  end

  desc 'Show difference between schema definition and actual schema'
  task :'dry-run' do
    sh 'ridgepole', '--config', 'config/database.yml', '--env', ENV.fetch('RAILS_ENV', 'development'), '--apply', '--dry-run', '--file', 'schema/Schemafile'
  end
end
