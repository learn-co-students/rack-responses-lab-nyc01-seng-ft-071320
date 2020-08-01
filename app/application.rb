
class Application
    def call(env)
    
        resp = Rack::Response.new
        resp.write time_response
        resp.finish
    end

    def time_response
        t = Time.now
            t.hour.to_i < 12 ?  ["<em>good morning</em>"] : ["<em>good afternoon</em>"]
    end

end
