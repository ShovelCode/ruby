#I modified this slightly because I was missing
#the double quotes, the links still worked.
 
print "This is the atag program\n"
textin = File.open("links.txt", "r")
textout = File.open("ataglinks.txt", "w")
while !textin.eof?
        line = textin.readline
        line2 = line.chop
        puts line2 + "\n"
        puts "Name: "
        name = gets.chomp
        textout.write "<a href=\"#{line2}>#{name}\"</a><br>\n"
 
    end