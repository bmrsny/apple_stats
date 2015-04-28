20.times do
  Payload.insert(
                  url: "http://apple.com",
                  referrer: "http://apple.com/about",
                  created_at: Date.today,
                )
end

10.times do
  Payload.insert(
                  url: "http://ign.com",
                  referrer: "http://ign.com/about",
                  created_at: Date.today,
                )
end


20.times do
  Payload.insert(
                  url: "http://apple.com",
                  referrer: "http://apple.com/about",
                  created_at: (Date.today - 1),
                )
end

20.times do
  Payload.insert(
                  url: "http://apple.com",
                  referrer: "http://apple.com/about",
                  created_at: (Date.today - 1),
                )
end

20.times do
  Payload.insert(
                  url: "https://apple.com",
                  referrer: "http://developer.apple.com",
                  created_at: (Date.today - 5)
                )
end

20.times do
  Payload.insert(
                  url: "http://www.apple.com",
                  referrer: "",
                  created_at: (Date.today - 10)
                )
end

20.times do
  Payload.insert(
                  url: "http://en.wikipedia.org",
                  referrer: "",
                  created_at: (Date.today - 10)
                )
end
