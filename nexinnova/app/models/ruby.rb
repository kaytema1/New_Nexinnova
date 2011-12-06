require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://edition.myjoyonline.com/"
doc = Nokogiri::HTML(open(url))
doc.css(".section_box_1").each do |item|
  puts item.at_css("ul, li, a").text
end
