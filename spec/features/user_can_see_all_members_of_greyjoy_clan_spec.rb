require 'rails_helper'

feature 'user can see all members of a certain family' do
  scenario 'user selects members from dropdown' do
    visit '/'

    select 'Greyjoy', from: :family_names
    click_button 'Get Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("7 Members")
    expect(page).to have_css(".member", count: 7)

    within (first('.member')) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".id")
    end
  end
end

# And I click on "Get Members"
# Then my path should be "/search" with "house=greyjoy" in the parameters
# And I should see a message "7 Members"
# And I should see a list of the 7 members of House Greyjoy
# And I should see a name and id for each member.
