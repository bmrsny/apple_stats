require 'test_helper'

class PayloadTest < ActiveSupport::TestCase
  #def setup
  #Payload.insert(url: "http://apple.com", referrer: "http://apple.com/about",created_at: Date.today)
  #Payload.insert(url: "http://apple.com", referrer: "http://apple.com/contact",created_at: Date.today)
  #Payload.insert(url: "https://apple.com", referrer: "http://google.com",created_at: Date.today)
  #end

  test "Payload exists" do
    assert Payload
  end

  test "groups url count bewtween date range" do
    payload = Payload.top_urls
    assert_equal "", payload.first
  end
end
