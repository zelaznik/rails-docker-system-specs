require 'rails_helper'

describe "Home Page", type: :system do
  it "works" do
    visit "/posts"
    expect(page).to have_content("Post")
    expect(page).to have_link("New post", href: "/posts/new")
  end

  it "responds to javascript", js: true do
    visit "/posts"
    expect(page).to have_content("Clicked 0 time(s).")

    click_button("Click here")

    expect(page).to have_content("Clicked 1 time(s).")
  end
end
