require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

Time::DATE_FORMATS[:default] = "%H:%M"
Date::DATE_FORMATS[:default] = "%d/%m/%Y"


module TESTE
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.active_record.raise_in_transactional_callbacks = true

    ActionMailer::Base.smtp_settings = {

      :address              => 'smtp.gmail.com',
      :domain               => 'mail.google.com',
      :port                 => '587',
      :user_name            => 'parrot.contato@gmail.com',
      :password             => "parrotsenha",
      :authentication       => 'login',
      :enable_starttls_auto => true

    }




  end
end
