urls      = ["http://apple.com",
             "https://apple.com",
             "https://www.apple.com",
             "http://developer.apple.com",
             "http://en.wikipedia.org",
             "http://opensource.org"]

referrers = ["http://apple.com",
             "https://apple.com",
             "https://www.apple.com",
             "http://developer.apple.com",
             ""]

100.times do
  Payload.insert(
                  url: urls.sample,
                  referrer: referrers.sample,
                  created_at: Date.today,
                )
end

100.times do
  Payload.insert(
                  url: urls.sample,
                  referrer: referrers.sample,
                  created_at: (Date.today - 2),
                )
end


100.times do
  Payload.insert(
                  url: urls.sample,
                  referrer: referrers.sample,
                  created_at: (Date.today - 3),
                )
end

100.times do
  Payload.insert(
                  url: urls.sample,
                  referrer: referrers.sample,
                  created_at: (Date.today - 1),
                )
end

20.times do
  Payload.insert(
                  url: urls.sample,
                  referrer: referrers.sample,
                  created_at: (Date.today - 4)
                )
end

20.times do
  Payload.insert(
                  url: urls.sample,
                  referrer: referrers.sample,
                  created_at: (Date.today - 5)
                )
end

20.times do
  Payload.insert(
                  url: urls.sample,
                  referrer: referrers.sample,
                  created_at: (Date.today - 10)
                )
end


