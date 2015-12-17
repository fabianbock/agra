namespace :scrape do
  task :nyt do
    NewYorkTimesWorker.new.perform
  end
end