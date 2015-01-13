require_relative 'diary'

diary = Diary.new

puts "Welcome to the Diary App!"
puts "Please enter your name:"
name = gets.chomp
# puts name

puts "Would you like to read or write?"
choice = gets.chomp
if choice == "read"
  puts diary.get_secrets(name)
else # write
  puts "Enter your secret:"
  secret = gets.chomp
  diary.tell_secret name, secret
end


# puts "Do you want to write in your diary or read your diary?"
# write_or_read = $stdin.gets.chomp
# puts "What is your name?"
# name = $stdin.gets.chomp

# if write_or_read == "write"
#   puts "Write an Entry:"
#   entry = $stdin.gets.chomp
#   diary.tell_secret name, entry
# else write_or_read == "read"
#   puts "Here are your Entries:"
#   puts diary.get_secrets(name)
# end




# puts "Do you want to write in your diary or read your diary?"
# write_or_read = $stdin.gets.chomp
# puts "What is your name?"
# name = $stdin.gets.chomp

# if write_or_read == "write"
#   puts "Write an Entry:"
#   entry = $stdin.gets.chomp
#   tell_secret(name, entry)
# else write_or_read == "read"
#   puts "Here are your Entries:"
#   get_secrets(name)
# end




