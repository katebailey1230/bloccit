FactoryGirl.define do
   factory :comment do
     name RandomData.random_name
     body RandomData.random_sentence
   end
 end