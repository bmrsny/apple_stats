class Payload < Sequel::Model

  def self.top_urls
    #self.db["SELECT url, created_at, COUNT(url) AS visits FROM payloads WHERE created_at BETWEEN '2015-04-22' AND '2015-04-28' GROUP BY url ORDER BY visits DESC"].all
    self.db["SELECT *,COUNT(url) AS visits FROM payloads WHERE created_at BETWEEN '2015-04-22' AND '2015-04-28' GROUP BY created_at ORDER BY visits desc"].all
    #self.group_and_count(:url, :created_at).where('created_at > ?', (Date.today - 6)).group(:created_at).all
  end

  def self.top_ten_urls
    self.db["SELECT *, COUNT(url) AS visits FROM payloads WHERE created_at BETWEEN '2015-04-22' AND '2015-04-28' LIMIT 10"]
  end

  #def self.top_urls_by_date_range
    #self.all.inject(Hash.new(0)) do |result,payload|
      #result[payload[:url]] +=1
    #end
  #end
end
