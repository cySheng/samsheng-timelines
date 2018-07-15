require 'rails_helper'

RSpec.describe Timeline, type: :model do  

  it { should validate_presence_of(:event) }

  it "is valid with an event" do
    timeline = Timeline.new(
      event: "This was our first date."  
    )
    expect(timeline).to be_valid
  end 

end
