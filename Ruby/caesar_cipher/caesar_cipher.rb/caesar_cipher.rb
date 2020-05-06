def cipher(message,shift)

  a_to_z_lower = ['a','b','c','d','e','f','g',
              'h','i','j','k','l','m','n',
              'o','p','q','r','s','t','u',
              'v','w','x','y','z',]


  a_to_z_upper =  ['A','B','C','D','E','F','G',
              'H','I','J','K','L','M','N',
              'O','P','Q','R','S','T','U',
              'V','W','X','Y','Z']

  special_char = [' ','!','@',
              '#','$','%','^','&','*','(',
              ')','-','_','+','=',':',';',
              '?','/','<','>','"',"'"]


  message_array = message.chars       #splits the user input into an array

index_array = []

scrambled_message = ""

for letter in message_array do

if special_char.include?(letter) #checking for special characters
temp_char = special_char.find_index(letter) #temp_char is set to the relevant index from the array
scrambled_message += special_char[temp_char]

elsif a_to_z_upper.include?(letter) #checking for uppercase characters
  temp_char = a_to_z_upper.find_index(letter) + shift
if temp_char > 25 #mechanism that allows for 'wrapping'. i.e Z wrapped + 1 becomes A and so on.
    temp_char = temp_char - 26
      scrambled_message += a_to_z_upper[temp_char]
else
  scrambled_message += a_to_z_upper[temp_char]
end

else

    temp_char = a_to_z_lower.find_index(letter) + shift #assumes that anything left must be lowercase
  if temp_char > 25
      temp_char = temp_char - 26
        scrambled_message += a_to_z_lower[temp_char]
  else
    scrambled_message += a_to_z_lower[temp_char]
  end

end
end
p scrambled_message
end



puts "Ello luv, type ya message innit:"
print "> "
message = gets.chomp

puts "And ow' much ya wanna scramble it?"
print "> "
scramble = gets.chomp.to_i

puts "Orite, scrambling now...\n"
cipher(message,scramble)

puts "There it is."
