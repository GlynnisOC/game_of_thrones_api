class WesterosService

  def get_family_members
    binding.pry
    response = Faraday.get("http://westerosapi.herokuapp.com/api/v1/house/#{family_names}") do |req|
      req.params['api_key'] = ENV['WESTEROS_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  attr_reader :family_names
end
