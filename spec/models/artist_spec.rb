require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "association with song" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

    it "has many songs" do
      song1 = artist.songs.new(name: "Along the watchtower")
      song2 = artist.songs.new(name: "Hells Bells")

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end

    it "deletes associated rooms" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end
  end
end
