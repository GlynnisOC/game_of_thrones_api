class Member
  attr_reader :name, :id

  def initialize(attrs = {})
    @name = attrs.last.first[:attributes][:members].each { |attr| attr[:name]}
    @id = attrs.last.first[:attributes][:members].each { |attr| attr[:id]}
  end
end
