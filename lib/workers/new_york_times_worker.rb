class NewYorkTimesWorker
  def perform
    client = NewYorkTimes.new
    results = client.most_popular_all_sections
    retry = 0
    if results.nil? || results.empty? && retry < 5
      self.perform
      retry += 1
    end
    results.each do |item|
      Content.create(blurb: item['abstract'], image: item['media'][0]['media-metadata'][0]['url'], title: item['title'], author: item['byline'])
    end
  end
end