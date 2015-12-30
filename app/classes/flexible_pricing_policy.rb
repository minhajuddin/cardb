require 'open-uri'
require 'nokogiri'

class FlexiblePricingPolicy

  def total_price(base_price)
    base_price * margin
  end

  def margin
    # ignore case while matching
    count_of_letter_a = response.scan(/a/i).count
    count_of_letter_a * 1.0 / 100
  end

  private
  URL =  'http://www.reuters.com'
  def response
    Nokogiri::HTML(open(URL)).text
  rescue => ex
    Rails.logger.error("ERROR in finding margin for flexible pricing policy")
    Rails.logger.error(ex)
  end
end


