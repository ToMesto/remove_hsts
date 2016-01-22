module RemoveHsts
  ##
  # This is a RACK middleware that removes HSTS header from the response. Rails automatically adds HSTS header for any SSL request and
  # it couldn't be disabled. But we don't need this header, because in our stack it will be added by nginx.
  ##
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      @app.call(env).tap do |status, headers, body|
        headers.delete('Strict-Transport-Security'.freeze)
      end
    end
  end
end
