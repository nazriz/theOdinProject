
wordlist =      ["below","down","go","going","horn",
                  "how","howdy","it","i","low","own",
                  "part","partner","sit","sniffle","hello",
                "world", ]


def substrings(string, dictionary)

hash = Hash.new(0)

string_array = string.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ")

for word in string_array do

if dictionary.include?(word)
  hash[word] += 1

end
end

p  hash

end

substrings("Hello! Guvna! CHAPSSDF!!! sit partner sniffle", wordlist)
