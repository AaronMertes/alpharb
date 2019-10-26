module Alpharb
  class Client
    API_ENDPOINT = 'https://www.alphavantage.co'.freeze

    attr_reader :token

    def initialize(token = nil)
      @token = token
    end

    def search(keywords)
      request params: { function: 'SYMBOL_SEARCH', keywords: keywords }
    end

    def quote(symbol)
      request params: { function: 'GLOBAL_QUOTE', symbol: symbol }
    end

    private

    def client
      @_client ||= Faraday.new(API_ENDPOINT) do |client|
        client.request :url_encoded
        client.adapter Faraday.default_adapter
      end
    end

    def request(http_method: :get, endpoint: "query", params: {})
      response = client.public_send(http_method, endpoint, params.merge(apikey: @token))
      Oj.load(response.body, { symbol_keys: true })
    end
  end
end
