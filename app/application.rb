class Application
 
  def call(env)
    resp = Rack::Response.new
 
    time_1 = Kernel.rand(100..1200)
   
    resp.write "#{time_1}\n"
   
 
    if time_1>=100 && time_1<=1200
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end