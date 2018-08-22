class Application

  def call(env)
    resp = Rack::Response.new

    now = Time.now
    noon = now.replace(hour=12, minute=0, second=0, microsecond=0)

    if now < noon 
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
