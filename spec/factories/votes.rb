FactoryGirl.define do
   factory :vote do
     title RandomData.random_sentence
     body RandomData.random_paragraph
     topic
     user
     rank 0.0
   end
 end