class Application
 
    def call(env)
        resp = Rack::Response.new
        hour = Time.now.hour            # Saves current time for the hour
        greeting = hour < 12 ? "Good Morning!" : "Good Afternoon!"  # Condition for if hr true
        resp.write greeting             # Writes greeting
        resp.finish
    end
   
  end