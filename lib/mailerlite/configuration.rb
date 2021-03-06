module MailerLite
  # A class responsible for all configurations.
  class Configuration
    # Default API endpoint.
    API_ENDPOINT = 'https://app.mailerlite.com/api/v1'.freeze

    # Default User Agent header string.
    USER_AGENT = "MailerLite Ruby v#{MailerLite::VERSION}".freeze

    attr_accessor :api_key
    attr_writer :url, :user_agent

    # Takes url provided from configuration or uses default one.
    #
    # @return [String] An API Endpoint url which will be used for connection.
    def url
      @url || API_ENDPOINT
    end

    # Takes user agent from configuration or uses default one.
    #
    # @return [String] User agent which will be used for connection headers.
    def user_agent
      @user_agent || USER_AGENT
    end
  end
end
