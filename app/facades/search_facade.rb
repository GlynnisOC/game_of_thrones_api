class SearchFacade

  def initialize(family_names)
    @family_names = family_names
  end

  def family_members
    whole_family.map { |member| Member.new(member)}
  end

  def family_members_count
    whole_family.count
  end

  private

  def service
    WesterosService.new
  end

  def whole_family
    service.get_family_members
  end
end
