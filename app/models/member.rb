class Member
  attr_reader :name, :id

  def initialize(attrs = {})
    @name = attrs.last.first[:attributes][:members]
    @id = attrs.last.first[:attributes][:members]
  end
end
