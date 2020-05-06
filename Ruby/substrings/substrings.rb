
wordlist =      ["below","down","go","going","horn",
                  "how","howdy","it","i","low","own",
                  "part","partner","sit","sniffle","hello",
                "world"]


def substrings(string, dictionary)



string_array = string.split(" ")

for word in string_array do

if dictionary.include?(word)
  p "#{word} is here!"


end

end



end

substrings("hello world", wordlist)

#Alright, so I can very easily isolate whole words with include
# but I need to figure out how I'm going to isolate the substrings
# That is a job for tomorrow, good night for now :)
