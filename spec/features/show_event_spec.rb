require 'rails_helper'

describe "Viewing an individual event" do
  #let(:category) { create :category, name: "Festival" }
  let(:category) { create :category }
  let(:event) { create :event, categories: [category] }

  #let(:event) { create :event }
  #binding.pry

  it "shows the event's details" do
    visit event_url(event)

    expect(page).to have_text(event.name)
    expect(page).to have_text(event.user.email)
    expect(page).to have_text(event.description)
    expect(page).to have_text(event.location)
    expect(page).to have_text(event.price)
    expect(page).to have_text(event.capacity)
    expect(page).to have_text("Festival")

  end
end
