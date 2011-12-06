desc "Spider website"
task :spider_website  => :environment do
	@spider = Spider.find(ENV["SPIDER_ID"])
	@spider.crawl 
end
