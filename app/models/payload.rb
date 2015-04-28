class Payload < Sequel::Model

  def self.top_urls
    self.group_and_count(:url, :created_at).where('created_at > ?', (Date.today - 6)).group(:created_at).all
  end

  #def self.top_referrers
    #self.group_and_count(:url).exclude('created_at < ?', (Date.today-5)).select(:referrer).limit(5).all
  #end
end
