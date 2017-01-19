module Smartcore
  class GetCountriesWithRelationsRequest < BaseRequest

    attribute :country_id,    String

    def execute
      responce = execute_request
      if responce.status == success_status
        Smartcore::CountriesResponse.new(JSON.parse(responce.body)).countries
      else
        process_error(responce)
      end
    end

    def path
      router.information_countries_with_relations_path
    end
  end
end
