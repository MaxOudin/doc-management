# config/initializers/erdconfig.rb
RailsERD.configure do |config|
  config.excluded_models = ['ActiveStorage::Attachment', 'ActiveStorage::Blob']
end
