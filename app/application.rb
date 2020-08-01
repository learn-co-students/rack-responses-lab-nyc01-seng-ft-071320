class Application
    def call(env)
        resp=Rack::Response.new
        num=Time.now

        resp.write "#{num.hour}\n"

        if num.hour < 12
            resp.write "good morning"
        else 
            resp.write "good afternoon"
        end

        resp.finish

    end
end
