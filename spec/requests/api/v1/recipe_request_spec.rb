require 'rails_helper'

describe "Recipes API" do
  it "sends a list of recipes" do
    WebMock.allow_net_connect! 
    WebMock.disable! 
    VCR.eject_cassette 
    VCR.turn_off!(:ignore_cassettes => true)

    params = { country: "Japan" }

    get '/api/v1/recipes', params: params
    
    expect(response).to be_successful

    recipes = JSON.parse(response.body, symbolize_names: true)

    recipes[:data].each do |data|
      expect(data).to have_key(:id)
      expect(data[:id]).to eq(nil)

      expect(data).to have_key(:type)
      expect(data[:type]).to eq("recipe")

      expect(data).to have_key(:attributes)
      expect(data[:attributes]).to have_key(:title)
      expect(data[:attributes][:title]).to be_a(String)

      expect(data).to have_key(:attributes)
      expect(data[:attributes]).to have_key(:url)
      expect(data[:attributes][:url]).to be_a(String)

      expect(data).to have_key(:attributes)
      expect(data[:attributes]).to have_key(:country)
      expect(data[:attributes][:country]).to eq(nil)

      expect(data).to have_key(:attributes)
      expect(data[:attributes]).to have_key(:image)
      expect(data[:attributes][:image]).to be_a(String)
    end
  end

  it "sends a list of recipes without these keys and attributes" do
    WebMock.allow_net_connect! 
    WebMock.disable! 
    VCR.eject_cassette 
    VCR.turn_off!(:ignore_cassettes => true)

    params = { country: "Japan" }

    get '/api/v1/recipes', params: params
    
    expect(response).to be_successful

    recipes = JSON.parse(response.body, symbolize_names: true)

    recipes[:data].each do |data|
      expect(data).not_to have_key(:hits)
      expect(data).not_to have_key(:recipe)
      expect(data).not_to have_key(:uri)
      expect(data).not_to have_key(:images)
      expect(data).not_to have_key(:source)
    end
  end
end