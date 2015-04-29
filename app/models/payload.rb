class Payload < Sequel::Model

  def self.top_urls
    range = (Date.today..5.days.ago.to_date).to_a
    result = []
    range.each do |date|
      require "pry" 
       binding.pry
      formatted_date = date.strftime("%Y-%m-%d")
      output = pull_url_data(formatted_date)
      result << {formatted_date => output}
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
