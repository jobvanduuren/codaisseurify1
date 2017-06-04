require 'rails_helper'

describe "Viewing an individual song" do
  let(:song) { create :song }

  it "shows the room's details" do
    visit song_url(song)

    expect(page).to have_text(song.name)

  end
end
