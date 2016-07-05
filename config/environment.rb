# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Load variables from config.yml
APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")
