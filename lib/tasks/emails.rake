begin
  namespace :db do
    namespace :import do
      task :emails, [:file] => :environment do |t, args|
        # pass variables like so bundle exec rake db:import:emails[db/emails.csv]
        #Organization.set_gmaps4rails_options!({ :check_process  => true })
        Organization.import_emails(args[:file],1000)
      end
    end
  end
end