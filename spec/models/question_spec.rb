require 'rails_helper'

RSpec.describe Question, type: :model do
 let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: "True or False") }
 
 # #2
   describe "attributes" do
     it "has title, body, and resolved attributes" do
       expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved: "True or False")
     end
   end
end