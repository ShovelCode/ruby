#remaking the remove lines program
 
puts "This is the remove new lines program"
puts Dir.pwd
textin = File.open("manylines.txt", "r")
textout = File.open("oneline.txt", "w")
line = "";
while !textin.eof?
        line << textin.readline << " "
     end
line.delete!("\n")
#line.delete!("\r")
textout.write(line)