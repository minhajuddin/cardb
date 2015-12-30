require 'open-uri'
require 'nokogiri'

class FixedPricingPolicy

  def margin
    # ignore case while matching
    status_count = github_response.scan(/status/i).count
    status_count
  end

  private
  URL = 'https://developer.github.com/v3/#http-redirects'
  def github_response
    Nokogiri::HTML(open(URL)).text
  rescue => ex
    Rails.logger.error("ERROR in finding margin for fixed pricing policy")
    Rails.logger.error(ex)
  end
end

