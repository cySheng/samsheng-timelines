require 'rails_helper'

RSpec.describe "Timeline", type: :request do
  # let(:timeline) { FactroyBot.build(timeline) }

  context "with valid attributes" do
    it "creates timeline successfully" do
      timeline_params = FactoryBot.attributes_for(:timeline)

      expect {
        post timelines_path, params: { timeline: timeline_params } 
      }.to change(Timeline.all, :count).by(1)
      
      follow_redirect!

      expect(response.body).to include("Timeline successfully created")
    end
  end

  context "with invalid attributes" do
    it "does not create a timeline" do
      timeline_params = FactoryBot.attributes_for(:timeline, :invalid)

      expect {
        post timelines_path, params: { timeline: timeline_params } 
      }.to_not change(Timeline.all, :count)

      # expect(response.body).to include("Event can't be blank")
    end
  end
end
