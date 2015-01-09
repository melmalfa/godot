module GravatarApp
  class Server < Sinatra::Base


    configure :development do
      $redis = Redis.new
      register Sinatra::Reloader
    end

    get('/') do
      render(:erb, :index, {:layout => :default})
    end

    get('/students') do
      @allemails = $redis.lrange("wdi:students", 0, -1)
      # @students = emails.map do |email|
      #   Digest::MD5.hexdigest(email)
      end
      render(:erb, :students, {:layout = > :default})
    end

    get('/students/:email_hash') do
      email = params[:email_hash]
      profile_url = "http://www.gravatar.com/#{email}.json"
      response = HTTParty.get(profile_url)
        @name = response["entry"][0]["name"]["formatted"]

    end

    get('/students/name') do
      render(:erb, :name, {:layout => :default})
    end

  end # Server
end # GravatarApp
