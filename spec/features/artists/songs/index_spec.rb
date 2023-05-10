require "rails_helper" 

RSpec.describe "Artists songs index" do 
  it "shows all of the titles of songs for the artist" do 
    fleetwoodmac = Artist.create!(name: "Fleetwood Mac")
    chain = fleetwoodmac.songs.create!(title: "The Chain", length: 364, play_count: 5)
    lies = fleetwoodmac.songs.create!(title: "Lies", length: 576, play_count: 476)

    visit "/artists/#{fleetwoodmac.id}/songs"

    
    expect(page).to have_content(chain.title)
    expect(page).to have_content(lies.title)
  end
  it "links to each songs show page"
end