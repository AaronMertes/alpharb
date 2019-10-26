RSpec.describe Alpharb do
  it "has a version number" do
    expect(Alpharb::VERSION).not_to be nil
  end

  it "create a new client" do
    client = Alpharb::Client.new key: @config["key"]
    expect(client.class).to eq Alpharb::Client
  end

  it "search for a quote" do
    result = @client.search "BIDI4"
    expect(result[:bestMatches][0][:"1. symbol"]).to eq "BIDI4.SAO"
    expect(result[:bestMatches][0][:"2. name"]).to eq "Banco Inter S.A."
  end

  it "retrieve info for a quote" do
    result = @client.quote "BIDI4.SAO"
    expect(result[:"Global Quote"][:"01. symbol"]).to eq "BIDI4.SAO"
  end
end
