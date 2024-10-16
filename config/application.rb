require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module ChatApp
  class Application < Rails::Application
    
    config.load_defaults 7.0
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'
    config.active_storage.variant_processor = :mini_magick
 
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
  end
end
