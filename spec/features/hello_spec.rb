require "rails_helper"

RSpec.feature "Do something", :js do
  fixtures :all

  scenario "Say hello world" do
    Person.create!(name: "Jonas")
    visit "/people"

    expect(page).to have_content("Jonas")
    expect(page).to have_content("Sally")
    expect(page).not_to have_content("Harry")
  end

  scenario "Good bye!" do
    Person.create!(name: "Harry")
    visit "/people"

    expect(page).to have_content("Harry")
    expect(page).to have_content("Sally")
    expect(page).not_to have_content("Jonas")
  end
end
