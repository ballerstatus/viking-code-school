def fibonacci spec
  output = [0,1]
  count = spec - 1
  count.times do |sum|
    output.push (output.last + output[-2])
  end
  output.shift
  print output
  puts ''
end

fibonacci(10)