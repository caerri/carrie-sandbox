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
# other update value types += -= /= *= are similar
print "--------------------- array stuff ---------------------\n"
print " will do prints later. "
# in irb, this is an example for assigning a variable
# to the previous array entered in irb:
# irb(main):005> ["this", "is", "an", "array"]
# => ["this", "is", "an", "array"]
# irb(main):006> arr1 = _
# => ["this", "is", "an", "array"]
# irb(main):007> arr1
# => ["this", "is", "an", "array"]
# irb(main):008>

# ------ you can find the index in reverse by doing ... -----
# irb(main):011> arr1[0]
# => "this"
# irb(main):012> arr1[-1]
# => "array"

# ----- what happens if the index does not exist => nil -----
# rb(main):006> arr = _
# => [1, 2, 3, 4, 5]
# irb(main):007> arr[-1]
# => 5
# irb(main):008> arr[-4]
# => 2
# irb(main):009> arr[-5]
# => 1
# irb(main):010> arr[-6]
# => nil

# --- updating indexes within the array are as expected ---
# irb(main):005> arr = [1, 2, 3, 4, 5]
# => [1, 2, 3, 4, 5]
# irb(main):006> arr[0] = 25
# => 25
# irb(main):007> arr
# => [25, 2, 3, 4, 5]
# irb(main):008> arr[-1] = arr[-1] * 10
# => 50
# irb(main):009> arr
# => [25, 2, 3, 4, 50]
# irb(main):010> arr[1] += 6
# => 8
# irb(main):011> arr
# => [25, 8, 3, 4, 50]
# irb(main):012>


# --- shovel operator << is like a push to end of array
# irb(main):011> arr
# => [25, 8, 3, 4, 50]
# irb(main):012> arr << 100
# => [25, 8, 3, 4, 50, 100]

# or use push method
# => [25, 8, 3, 4, 50, 100]
# irb(main):013> arr.push(200)
# => [25, 8, 3, 4, 50, 100, 200]
# irb(main):014> arr.push("Hello")
# => [25, 8, 3, 4, 50, 100, 200, "Hello"]

# remove last element, pop is used as expected:
# => [25, 8, 3, 4, 50, 100, 200, "Hello"]
# irb(main):015> arr.pop
# => "Hello"
# irb(main):016> arr
# => [25, 8, 3, 4, 50, 100, 200]

# unshift adds a prepended value to beginning/first of array
# irb(main):016> arr
# => [25, 8, 3, 4, 50, 100, 200]
# irb(main):017> arr.unshift("World")
# => ["World", 25, 8, 3, 4, 50, 100, 200]
# irb(main):018> arr.shift
# => "World"
# irb(main):019> arr
# => [25, 8, 3, 4, 50, 100, 200]

# there is also a prepend method that makes more sense in english
# irb(main):019> arr
# => [25, 8, 3, 4, 50, 100, 200]
# irb(main):020> arr.prepend("Hello, world")
# => ["Hello, world", 25, 8, 3, 4, 50, 100, 200]

# arr.length works as expected. size method: arr.size does the same
# irb(main):023> arr
# => [25, 8, 3, 4, 50, 100, 200]
# irb(main):024> arr.length
# => 7
# irb(main):025> arr.size
# => 7

# --------- arrays and joining: ------
# irb(main):026> framework = ["Ruby", "on", "Rails"]
# => ["Ruby", "on", "Rails"]
# irb(main):027> framework.join
# => "RubyonRails"
# irb(main):028>

# --------- what if we want spaces?? !! ?? --------
# => ["Ruby", "on", "Rails"]
# irb(main):029> framework.join(" ")
# => "Ruby on Rails"

# ---- Now we split! ---- by default split splits by space #
# irb(main):030> "Ruby on Rails".split
# => ["Ruby", "on", "Rails"]

# --- Splitting by "" gives you each character indexed into the array
# irb(main):031> "Ruby on Rails".split("")
# => ["R", "u", "b", "y", " ", "o", "n", " ", "R", "a", "i", "l", "s"]

print "--------------------- enumerating --------------------- \n"
print "#{arr=[]
3.times {|i| arr.push i}
arr} <--   arr=[]                   # to open an empty array
                3.times {|i| arr.push i} # enumerates 3 times, pushing index i to array
                arr                      # then prints the new array
                                         # note to self: is |i| indicating .abs?" #TODO: answer question
print "\n----------------------- strings! ----------------------\n"
# ----- Strings and array stuff -----
# irb(main):033> arr
# => ["R", "u", "b", "y", " ", "o", "n", " ", "R", "a", "i", "l", "s"]
# irb(main):034> arr.size
# => 13
