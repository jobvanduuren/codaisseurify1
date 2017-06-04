require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      song = Song.new(name: "")
      song.valid?
      expect(song.errors).to have_key(:name)
    end

    it "is invalid without a name" do
      song = Song.new(album: "")
      song.valid?
      expect(song.errors).to have_key(:album)
    end

    it "is invalid with a name longer than 500 words" do
      song = Song.new(image_url: Faker::Lorem.sentence(word_count = 550))
      song.valid?
      expect(song.errors).to have_key(:image_url)
    end
  end

  describe "association with artist" do
    let(:artist) { create :artist }

    it "belongs to an artist" do
      song = artist.songs.new(name: "Barbie Girl")

      expect(song.artist).to eq(artist)
    end
  end
end
