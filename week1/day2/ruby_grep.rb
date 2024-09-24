# Write a simple grep that will print the lines of a file having any
# occurrences o a phrase anywhere in that line.

filename, pattern = ARGF.argv
re = Regexp.new(pattern)

File.open(filename, "r") do |f|
  line_no = 1
  f.each_line do |line|
    if re.match(line)
      puts "#{line_no}: #{line}"
    end
    line_no = line_no + 1
  end
end
