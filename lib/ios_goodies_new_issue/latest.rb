# Check sites for latest issue
module IosGoodiesNewIssue
  require 'net/http'
  require 'uri'

  WEB_URL = 'http://ios-goodies.com'
  GITHUB_URL = 'https://github.com/iOS-Goodies/iOS-Goodies/tree/master/Issues'

  class << self
    def web_get
      body = body_get WEB_URL
      body.match(/week-.../)[0].gsub('week-','')
    end

    def github_matches(issue)
      body = body_get GITHUB_URL
      pattern = "Week#{issue}"
      m = body.match(/#{pattern}/)
      return true if m.nil? # does not have a match
      false # has a match
    end

    def body_get(url)
      Net::HTTP.get(URI.parse(url))
    end
  end
end
