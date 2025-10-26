# this exists due to my lack of current note structure.
# currently @: https://gorails.com/episodes/integers-and-floats-in-ruby

print "\n--------------------- ints ---------------------\n"
puts "#{2 + 2} <- this is: puts 2 + 2\n"
p "#{2 + 2} <-- this is: p 2 + 2\n"
puts "(notice how there are quotes around the above). why?\n" #TODO: answer question
print "#{2 + 2} <-- this is: print 2 + 2\n"
print "#{2 - 2} <-- this is a print 2 - 2\n"
print "#{2 / 2} <-- this is a print 2 / 2\n"
print "#{2 * 2} <-- this is a print 2 * 2\n"
print "#{2 % 2} <-- this is a print 2 % 2\n"
print "--------------------- floats ---------------------\n"
print "#{5 + 2.0} <-- this is: print 5 + 2.0\n"
print "#{5 - 2.0} <-- this is a print 5 - 2.0\n"
print "#{5 / 2.0} <-- this is a print 5 / 2.0\n"
print "#{5 * 2.0} <-- this is a print 5 * 2.0\n"
print "#{5 % 2.0} <-- this is a print 5 * 2.0\n"
print "
    ints can be coerced using .to_f method
    and a float can be coerced into an int with .to_i
    and these can be coerced into a string with .to_s"
print "\n--------------------- checking equality ---------------------\n"
print "#{3 == 5} <-- 3 == 5 \n"
print "#{3 != 5} <-- 3 != t \n"
print "#{4 <=> 7} <-- 4 <=> 7 this uses the 'spaceship' operator
where #4 <=> 7 and 4 is on the lower end\n"
print "#{7 <=> 4} <-- 7 <=> 4\n"
print "#{4 <=> 4} <-- 4 <=> 4\n"
print "--------------------- int methods ---------------------\n"
print "------ https://ruby-doc.org/3.4.1/Integer.html --------\n"
print "#{-1.abs} <-- -1.abs\n"
print "#{2.even?} <-- 2.even?\n"
print "#{4.odd?} <-- 4.odd?\n"
print "#{3.even?} <-- 3.even?\n"
print "#{3.odd?} <-- 3.odd?\n"
print "#{arr=[]
3.times {|i| arr.push i}
arr} <--   arr=[]                   # to open an empty array
                3.times {|i| arr.push i} # enumerates 3 times, pushing index i to array
                arr                      # then prints the new array
                                         # note to self: is |i| indicating .abs?" #TODO: answer question
print "\n----------------------- strings! ----------------------\n"

