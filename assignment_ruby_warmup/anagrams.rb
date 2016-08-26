=begin # read contents of external file (fyi)
file = File.open("enable.txt", "r")
contents = file.read
puts contents
=end

def anagram input
  split_input = input.split('').sort # split input by characters and sort alphabetically
  dictionary = {}
  anagrams = [] 
  File.open('enable.txt', 'r') do |file| # goes through each line in external file

    file.each_line do |line|
      line_data = line.strip # removes spaces and newlines
      if line_data.split('').sort == split_input && line_data != input # ensure input is not added
        dictionary[line_data] = line_data.split('').sort # left side becomes key, right side becomes value
      end
    end

  end
  anagrams = dictionary.keys # keys become anagrams
  print anagrams
  puts '' # for clarity
end

anagram('pears')