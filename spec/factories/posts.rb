FactoryGirl.define do
  factory :post do
    date Date.today
    rational "Some Rationale"
    status
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rational "Some more content"
    status
    user
  end
end