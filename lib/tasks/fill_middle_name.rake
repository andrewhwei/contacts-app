namespace :custom_rake_tasks do
  task :fill_middle_name do
    contacts = Contact.all
    contacts.each do |contact|
      contact.update(middle_name: Faker::Name.first_name)
    end
  end
end