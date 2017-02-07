require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "New Question", body: "New Question body", resolved: "Boolean") }
 
 # #2
   describe "attributes" do
     it "has title, body and resolved attributes" do
       expect(question).to have_attributes(title: "New Question", body: "New Question body", resolved: "Boolean")
     end
   end
end
