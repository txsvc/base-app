# typed: false
namespace :gcloud do
  desc 'Tasks supporting Google Cloud Platform deployments'

  task :test do
    puts ENV['PROJECT_ID']
  end

  task :deploy do
    puts 'Clear temp files'
    `rm -rf public/assets`
    `mkdir -p public/assets`

    puts 'Build assets'
    `RAILS_ENV=production bundle exec rake assets:precompile`

    puts 'Deploy to Google AppEngine'
    opts = ''
    project_id = ENV['PROJECT_ID']
    opts = "--project=#{project_id}" unless project_id.nil?
    cmd = "gcloud app deploy app.yaml -q #{opts}"
    puts "\nExecuting '#{cmd}'"
    ok = system(cmd)

    # reset the environment
    `yarn install --check-files`
  end
end
