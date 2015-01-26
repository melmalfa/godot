module MelOAuth
  class Server < Sinatra::Base

    enable :logging, :sessions

    configure :development do
      register Sinatra::Reloader
      require 'pry'
    end

    get('/') do
      # https://www.linkedin.com/uas/oauth2/authorization?response_type=code
      #                                      &client_id=YOUR_API_KEY
      #                                      &scope=SCOPE
      #                                      &state=STATE
      #                                      &redirect_uri=YOUR_REDIRECT_URI
      query_params = URI.encode_www-form({
        :response_type => CODE
        :client_id     => ENV["LINKEDIN_OAUTH_ID"],
        :state         => "DCEEFWF45453sdffeml424"
        :redirect_uri  => "http://localhost:9292/oauth_callback"
        })
      @linkedin_auth_url = "https://www.linkedin.com/uas/oauth2/authorization?response_type=code" + query_params
      render(:erb, :index)
    end

    get("/oauth_callback") do
      response = HTTParty.post(
        "https://www.linkedin.com/uas/oauth2/accessToken?grant_type=authorization_code",
        :body =>  {
          :code           => params[:code],
          :client_id      => ENV["LINKEDIN_OAUTH_ID"],
          :client_secret  => ENV["LINKEDIN_OAUTH_SECRET"],
        },
        :headers  => {
          "Accept"  => "application/json"
        }

        )

    redirect to("/")
    end



  end
end

