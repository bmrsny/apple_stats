require 'test_helper'

class Api::V1::TopUrlsControllerTest < ActionController::TestCase
  def setup
    Payload.insert(url: "http://apple.com", referrer: "http://apple.com/about",created_at: "2015-04-28")
    Payload.insert(url: "http://apple.com", referrer: "http://apple.com/contact",created_at: "2015-04-27")
    Payload.insert(url: "https://en.wikipedia.org", referrer: "http://google.com",created_at: "2015-04-28")
    Payload.insert(url: "https://apple.com/about", referrer: "http://apple.com",created_at: "2015-04-20")
  end

  test "#index" do
    get :index, format: :json

    top_urls = JSON.parse(response.body)
    assert_response :success
    #assert_equal {"2015-04-28"=>[{"url"=>"http://apple.com", "visits"=>1}, {"url"=>"https://en.wikipedia.org", "visits"=>1}]}, top_urls.first
  end
end
