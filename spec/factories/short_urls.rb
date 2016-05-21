using ::CreateHashRefinement
FactoryGirl.define do
  factory :short_url do
    sequence(:url) { |i| "http://www.website#{i}.com" }
    after(:build) { |short_url|
      short_url.code = short_url.url.create_hash
    }
  end
end
