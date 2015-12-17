require 'httparty'

class Pinterest
  include HTTParty
  base_uri 'https://api.pinterest.com/v1/'

  def most_popular(options = {})
    section = options[:section]
    type = options[:type]
    page = options[:page] || 1
    self.class.get("http://api.nytimes.com/svc/mostpopular/v2/#{type}/#{options[:section]}/#{page}.json?api-key=sample-key")['results']
  end

  
end