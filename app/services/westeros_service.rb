class WesterosService

  def get_family_members
    response = Faraday.get("http://westerosapi.herokuapp.com/api/v1/house/greyjoy") do |req|
      req.params['api_key'] = ENV['WESTEROS_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)[:data][0][:attributes][:members]
  end
end
