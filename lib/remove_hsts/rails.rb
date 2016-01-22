module RemoveHsts
  class Railtie < Rails::Railtie
    initializer "remove_hsts.configure_rails_initialization" do
      app = Rails.application
      if Rails.env.production? && app.config.force_ssl
        app.middleware.insert_before ActionDispatch::SSL, RemoveHsts::Middleware
      end
    end
  end
end
