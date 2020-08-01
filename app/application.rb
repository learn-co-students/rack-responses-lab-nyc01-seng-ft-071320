require 'rack'

class Application
    
    def call(env)
        resp = Rack::Response.new

        time = Time.now
        resp.write "Good Morning!" if time.hour < 12
        resp.write "Good Afternoon!" if time.hour >= 12
        resp.finish
    end

end