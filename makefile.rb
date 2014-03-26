#Create a 1M fill buffer
# fills = '1'*1048576
# File.open("file-#{ARGV[0]}M.txt", 'w') do |f| 
#   (ARGV[0].to_i).times {f.write(fills) }
# end

(14..30).each do |n|
  s = rand(100000..4231232)
  system("dd if=/dev/random of=" + n.to_s + ".txt bs=" + s.to_s + " count=1")
end