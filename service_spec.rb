require 'rspec'
require 'rest-client'
require 'json'

describe 'MockService' do

  it "should be titled 'Hello World!'" do
    # RestClient::Resource.new(URL, use:'', password:'').get
    resource = RestClient::Resource.new('localhost:4567')
    result_hash = JSON.parse(resource.get)
    expect(result_hash['title']).to eq 'Hello World!'
  end

  it "should have a body" do
    fail
  end

  #the title of the more service should be example glossary
  #the id of the first entry of the more service should be SGML
end