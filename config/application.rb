require_relative 'boot'

require 'rails/all'
Bundler.require(*Rails.groups)

module Todo5
  class Application < Rails::Application
    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins '*'
        resource '*',
          headers: :any,
          expose: ['X-Page', 'X-PageTotal'],
          methods: [:get, :post, :delete, :put, :options]
      end
    end
    config.active_job.queue_adapter = :delayed_job
    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')
    config.i18n.default_locale = :es
  end
end
