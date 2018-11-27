def substrings(str, dictionary)
  str = str.downcase.split(/[^\w]/).reject { |c| c.empty? }
  subs = {}
  str.map {|w|
    dictionary.each {|x|
      if w.include?(x)
        subs[x] = 0
      end
    }

  }
  dictionary.map {|word|
    if (subs.key?(word))  
      subs[word] += 1
    end
  }
  puts subs
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
