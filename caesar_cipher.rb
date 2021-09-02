
def code(text, shift)
    for i in 0...text.length do
        char = text[i].ord

        (a, z) = case char
        when 97..122 then [97, 122]
        when 65..90 then [65, 90]
        else next
        end
        
        rotate = shift > 0 ? 26 : -26
        
        char += shift
        char -= rotate unless char.between?(a, z)
        
        text[i] = char.chr
    end
    puts text
end

print "What is your message? "
message = gets.chomp
print "What is your shift? "
num = gets.chomp.to_i

puts message
p num
code(message, num)