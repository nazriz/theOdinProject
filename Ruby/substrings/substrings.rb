
wordlist =      ["below","down","go","going","horn",
                  "how","howdy","it","i","low","own",
                  "part","partner","sit","sniffle","hello",
                "world", ]


def substrings(string, dictionary)

hash = Hash.new(0) #initaite hash with a zero value, so that we can increment it

string_modified = string.downcase.gsub(/[^a-z0-9\s]/i, '')
# removes punctuation, makes the string lowercase, and splits at spaces.

dictionary.each do |word|

if string_modified.include?(word)
  hash[word] += 1

end
end

p  hash

end

substrings("Howdy partner, sit down! How's it going?", wordlist)
