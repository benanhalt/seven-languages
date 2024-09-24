a = []
for i in (1..16)
  a.push(rand(100))
end

puts 'Using each only:'
i = 0
ns = []
a.each do |n|
  ns.push(n)
  i = i + 1
  if i%4 == 0
    puts "#{ns[0]} #{ns[1]} #{ns[2]} #{ns[3]}"
    ns = []
  end
end

puts "\nUsing each_slice:"
a.each_slice(4) do |ns|
  puts "#{ns[0]} #{ns[1]} #{ns[2]} #{ns[3]}"
end
