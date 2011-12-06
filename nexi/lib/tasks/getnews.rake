desc "Fetch Product Prices"
task :getnews => :environment do
  
  require 'rubygems'
  require 'rake'
  require 'nokogiri'
  require 'open-uri'
  
  
  @agent = Agent.all
  @agent.each do |agent|

    url =  "http://www.bbc.co.uk/search/news/?q=#{agent.search_query}"
    doc = Nokogiri::HTML(open(url))
    puts doc.at_css("title").text
    doc.css(".linktrack-title").each do |story|
      title = story.text

      puts "#{title}"
      news = Newsfeed.new(:content => title.to_s)
      news.save
    # puts "www.walmart.com"+item.at_css(".linktrack-title")[:href]
    end

  end
end
