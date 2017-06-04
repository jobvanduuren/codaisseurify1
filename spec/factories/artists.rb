FactoryGirl.define do
  factory :artist do
    name      { Faker::Name.name }
    genre     { Faker::Name.name }
    image_url "http://streamd.hitparade.ch/cdimages/freddy_quinn-nicht_eine_stunde_tut_mir_leid_a.jpg"

  end
end
