namespace :gcloud do
	desc "Tasks supporting Google Cloud Platform deployments"
  
	task :test do
		puts ENV['PROJECT_ID']
	end

	task :deploy do
		puts "Clear temp files"
		%x( rm -rf public/assets )
		%x( mkdir -p public/assets )

		puts "Build assets"
		%x( RAILS_ENV=production bundle exec rake assets:precompile )

		puts "Deploy to Google AppEngine"
		opts = ""
		project_id = ENV['PROJECT_ID']
		opts = "--project=#{project_id}" if project_id != nil
		cmd = "gcloud app deploy app.yaml -q #{opts}"
		puts "\nExecuting '#{cmd}'"
		ok = system( cmd )

		# reset the environment
		%x( yarn install --check-files )

	end
end