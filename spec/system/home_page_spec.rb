require 'rails_helper'

describe "Home Page", type: :system do
  it "works" do
    visit "/posts"
    expect(page).to have_content("Post")
    expect(page).to have_link("New post", href: "/posts/new")
  end
end
