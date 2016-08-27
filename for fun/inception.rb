puts "How deep do you want to go?\n"
puts "Enter > "
layer = gets.chomp.to_i
mind = [1]

while layer != 0
  brain = [mind]
  inception = brain.dup
  puts brain.object_id
  puts inception.object_id
  layer -= 1
end