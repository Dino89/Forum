FactoryGirl.define do
  factory :room do
    id "100"
   title "Religion"
  end

  #factory :room do
   # sequence(:room) {|r| "My room #{r}" }
  #end
end