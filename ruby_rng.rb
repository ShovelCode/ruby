message = 1000.times.map{65 + Random.rand(26)}
for e in message
    print e.chr
end
