require 'open-uri'
require 'nokogiri'

class PrestigePricingPolicy

  def total_price(base_price)
    base_price + margin
  end

  def margin
    # ignore case while matching
    pubdate_tag_count = Nokogiri::XML(response).css("pubDate").count
    pubdate_tag_count
  end

  private
  URL = 'http://www.yourlocalguardian.co.uk/sport/rugby/rss/'
  def response
    open(URL)
  rescue => ex
    Rails.logger.error("ERROR in finding margin for fixed pricing policy")
    Rails.logger.error(ex)
  end
end

