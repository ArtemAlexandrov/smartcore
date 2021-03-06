require 'smartcore/client/information_methods/geo_data'
require 'smartcore/client/information_methods/brand_data'

module Smartcore
  class Client

    def check_email_presence(email)
      Smartcore::CheckEmailPresenceRequest.new(email: email).execute
    end

  end
end
