require_relative 'boot'

require 'rails/all'

require "rails"

# Include each railties manually, excluding `active_storage/engine`
# %w(
#  active_record/railtie
#  action_controller/railtie
#  action_view/railtie
#  action_mailer/railtie
#  active_job/railtie
#  action_cable/engine
#  rails/test_unit/railtie
#  sprockets/railtie
# ).each do |railtie|
#  begin
#    require railtie
#  rescue LoadError
#  end
# end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Musicapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.generators do |g|
    g.test_framework :rspec,
    :fixtures => false,
    :view_specs => false,
    :helper_specs => false,
    :routing_specs => false,
    :controller_specs => true,
    :request_specs => false
end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
