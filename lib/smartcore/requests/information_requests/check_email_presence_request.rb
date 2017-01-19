module Smartcore
  class CheckEmailPresenceRequest < BaseRequest
    attribute :email,    String

    def execute
      responce = execute_request_with_token
      if responce.status == success_status
        true
      else
        process_error(responce)
      end
    end

    def path
      router.information_check_email_path
    end
  end
end
