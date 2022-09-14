require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Psvb2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "America/Santiago"
    # config.eager_load_paths << Rails.root.join("extras")
    
    # config/initializers/locale.rb

    config.i18n.enforce_available_locales = false

    # Permitted locales available for the application
    I18n.available_locales = 'es-CL'

    # Set default locale to something other than :en
    I18n.default_locale = :'es-CL'

  end
end
