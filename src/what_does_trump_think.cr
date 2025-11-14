require "json"
require "http/client"

class WhatDoesTrumpThink
  API_PATH = "api/v1"
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://api.whatdoestrumpthink.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_random_quote() : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/quotes/random", headers: @headers).body)
  end

  def get_personalized_quote(name : String) : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/quotes/personalized?q=#{name}", headers: @headers).body)
  end

  def get_quotes() : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/quotes", headers: @headers).body)
  end
end
