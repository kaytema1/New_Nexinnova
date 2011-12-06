begin
  namespace :db do
    desc "Populate the development database with some fake data"
    task :populate => :environment do
      20.times do
        Article.create! :title => Forgery::LoremIpsum.sentence, :author => Forgery::LoremIpsum.words(2), :content => Forgery::LoremIpsum.paragraphs(6), :tag => Forgery::LoremIpsum.words(1), :page_id => "1", :source => Forgery::LoremIpsum.sentence
      end
    end
  end
rescue LoadError
puts "Please run: sudo gem install forgery"
end  