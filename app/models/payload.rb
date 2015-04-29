class Payload < Sequel::Model

  def self.top_urls
    #range = (Date.today..(5.days.ago.to_date)).to_a
    range = (5.days.ago.to_date..Date.today)
      .map {|date| date.strftime("%Y-%m-%d") }
       .reverse
    result = []
    range.each do |date|
      output = pull_url_data(date)
      result << {date => output}
    end
    result
  end

  def self.pull_url_data(date)
    self.db["SELECT url,COUNT(url) AS visits FROM payloads WHERE created_at BETWEEN '#{date}' AND '#{date}' GROUP BY url ORDER BY visits desc"].all
  end

  def self.top_referrers
    self.db["SELECT *, COUNT(url) AS visits FROM payloads WHERE created_at BETWEEN '2015-04-22' AND '2015-04-28' LIMIT 10"]
  end
end
