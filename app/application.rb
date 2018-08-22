class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now

    # num_1 = Kernel.rand(1..20)
    # num_2 = Kernel.rand(1..20)
    # num_3 = Kernel.rand(1..20)
    #
    # resp.write "#{num_1}\n"
    # resp.write "#{num_2}\n"
    # resp.write "#{num_3}\n"

    if Time.now(hour,min,sec) < Time.new(12,00,00)
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
