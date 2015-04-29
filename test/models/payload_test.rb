require 'test_helper'

class PayloadTest < ActiveSupport::TestCase
  def setup
    Payload.insert(url: "http://apple.com", referrer: "http://apple.com/about",created_at: Date.today)
    Payload.insert(url: "http://apple.com", referrer: "http://apple.com/contact",created_at: Date.today)
    Payload.insert(url: "https://apple.com", referrer: "http://google.com",created_at: Date.today)
    Payload.insert(url: "https://apple.com/about", referrer: "http://apple.com",created_at: (Date.today - 6))
  end

  def teardown
    clear_records
  end

  test "Payload exists" do
    assert Payload
  end

  test "groups url count bewtween date range" do
    payload = Payload.top_urls
    assert_equal 2, payload.first[:visits]
    assert_equal 1, payload.last[:visits]
    clear_records
  end

  private

  def clear_records
    Payload.all.each(&:destroy)
  end
end
