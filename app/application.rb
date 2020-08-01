class Application
 
    def call(env)
      resp = Rack::Response.new
   
      num_1 = Time.now
      
   
      #resp.write "#{num_1}\n"
   
      if num_1.hour >=12
        resp.write "Good Afternoon"
      else
        resp.write "Good Morning"
      end
  
   
      resp.finish
    end
   
  end
  