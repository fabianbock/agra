require 'httparty'

class NewYorkTimes
  include HTTParty
  base_uri 'http://api.nytimes.com/svc'

  SECTIONS = %w(science sports)

  def most_popular(options = {})
    section = options[:section]
    type = options[:type] || 'mostviewed'
    page = options[:page] || 1
    self.class.get("http://api.nytimes.com/svc/mostpopular/v2/#{type}/#{options[:section]}/#{page}.json?api-key=sample-key") ['results']
  end

  def most_popular_all_sections(options = {})
    results = []
    SECTIONS.each do |section|
      results.concat(most_popular({section: section}.merge(options)))
    end
    results
  end


end
