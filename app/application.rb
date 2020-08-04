class Application 
    def call(env)
        resp = Rack::Response.new
        the_time = Time.now
        resp.write "#{the_time}\n"
        
        if the_time.hour < 12
            resp.write "Good Morning!"
        else 
            resp.write "Good Afternoon!"
        end
        resp.finish 
    end

end