module ApplicationHelper
  def shorten (string, count = 80)
    if string.length >= count
    shortened = string[0, count]
    splitted = shortened.split(/\s/)
    words = splitted.length
    splitted[0, words-1].join(" ") + ' ...'
    else
    string
    end
  end
  
  
  
   def paragraph (string, count = 250)
    if string.length >= count
    shortened = string[0, count]
    splitted = shortened.split(/\s/)
    words = splitted.length
    splitted[0, words-1].join(" ") + ' ...'
    else
    string
    end
  end

end