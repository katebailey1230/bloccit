require 'rails_helper'

RSpec.describe Vote, type: :model do
  let(:topic) { create(:topic) }
   let(:user) { create(:user) }
   let(:post) { create(:post) }
   let(:vote) { Vote.create!(value: 1, post: post, user: user) }
 
 # #1
   it { is_expected.to belong_to(:post) }
   it { is_expected.to belong_to(:user) }
 # #2
   it { is_expected.to validate_presence_of(:value) }
 # #3
   it { is_expected.to validate_inclusion_of(:value).in_array([-1, 1]) }
    
    describe "update_post callback" do
     it "triggers update_post on save" do
 # #26
       expect(vote).to receive(:update_post).at_least(:once)
       vote.save!
     end
 
     it "#update_post should call update_rank on post " do
 # #27
       expect(post).to receive(:update_rank).at_least(:once)
       vote.save!
     end
   end

end
