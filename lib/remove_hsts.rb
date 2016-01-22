require "remove_hsts/middleware"

module RemoveHsts
end


require "remove_hsts/rails" if defined? Rails::Railtie
