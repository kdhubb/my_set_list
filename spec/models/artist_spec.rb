require "rails_helper" 

RSpec.describe Artist do 
  it {should have_many :songs}

  describe "instance methods" do 
    describe "#average_song_length" do 
      before(:each) do 
        @fleetwoodmac = Artist.create!(name: "Fleetwood Mac")
        @chain = @fleetwoodmac.songs.create!(title: "The Chain", length: 364, play_count: 5)
        @lies = @fleetwoodmac.songs.create!(title: "Lies", length: 576, play_count: 476)
        @dream = @fleetwoodmac.songs.create!(title: "Dream", length: 1, play_count: 300)
      end
      it "returns the average song length" do 
        expect(@fleetwoodmac.average_song_length.round(2)).to eq(313.67)
      end
    end
  end
end