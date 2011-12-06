require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.bbc.co.uk/search/news/?q=Shit"
doc = Nokogiri::HTML(open(url))
#puts doc.at_css(".story , p").text
doc.css(".story, p").each do |story|
  title = story.text
  
  
  puts "#{title}"
 # puts "www.walmart.com"+item.at_css(".linktrack-title")[:href]
end
