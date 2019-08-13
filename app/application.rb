class Application
 
  def call(env)
    resp = Rack::Response.new
 
    time_1 = Kernel.rand(100..1200)
    time_2 = Kernel.rand(100..2400)

 
    resp.write "#{time_1}\n"
    resp.write "#{time_2}\n"
   
 
    if time_1<=1200 
      resp.write "Good Morning!"
    elsif time_2 >1200
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end