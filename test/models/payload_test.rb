require 'test_helper'

class PayloadTest < ActiveSupport::TestCase
  def setup
    Payload.insert(url: "http://apple.com", referrer: "http://apple.com/about",created_at: "2015-04-28")
    Payload.insert(url: "http://apple.com", referrer: "http://apple.com/contact",created_at: "2015-04-27")
    Payload.insert(url: "https://en.wikipedia.org", referrer: "http://google.com",created_at: "2015-04-28")
    Payload.insert(url: "https://apple.com/about", referrer: "http://apple.com",created_at: "2015-04-20")
  end

  def teardown
    clear_records
  end

  test "Payload exists" do
    assert Payload
  end

  test "groups url count bewtween date range" do
    result = [{'2015-04-28' => [{:url =>"http://apple.com", :visits =>1}, {:url =>"https://en.wikipedia.org", :visits=>1}]}, {'2015-04-27' => [{:url=>"http://apple.com", :visits=>1}]}]
    assert_equal result, Payload.top_urls
    clear_records
  end

  test "returns top ten urls grouped by date with top 5 referrers" do
    payload.top_referrers
  end

  private

  def clear_records
    Payload.all.each(&:destroy)
  end
end
