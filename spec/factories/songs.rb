FactoryGirl.define do
  factory :song do
    name      { Faker::Name.name }
    album     { Faker::Name.name }
    image_url "http://streamd.hitparade.ch/cdimages/freddy_quinn-nicht_eine_stunde_tut_mir_leid_a.jpg"
    duration  { Faker::Number.number(2)}
  end
end
