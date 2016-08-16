def dollar_word(word)
  value = get_array_of_values(word.downcase.scan /\w/).inject(0, :+)

  if value == 100
    word
  end
end

def get_array_of_values(array_of_letters)
  alphabet = ('a'..'z').to_a
  array_of_letters.map! { |item| alphabet.index(item) + 1 }
end

items = []

Dir.glob('../words/*.csv') do |file|
  File.open(file).each do |line|
    value = dollar_word(line)
    items << value if value != nil
  end
end

puts "List of all, #{items.count}, dollar words below:"
puts "---------------------------------------------------------------------------------------------"
items.map { |i| puts "\t #{i}" }
puts "---------------------------------------------------------------------------------------------"
puts "Wow, there are a lot of dollar words, the total is atleast: #{items.count}"
puts "---------------------------------------------------------------------------------------------"
