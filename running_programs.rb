# frozen_string_literal: true

# this exists due to my lack of current note structure.
# currently @: https://gorails.com/episodes/integers-and-floats-in-ruby

print "\n--------------------- ints ---------------------\n"
puts "#{2 + 2} <- this is: puts 2 + 2\n"
p "#{2 + 2} <-- this is: p 2 + 2\n"
puts "(notice how there are quotes around the above). why?\n" # TODO: answer question
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
print ' will do prints later. '
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

# --- not enough context on this piece but is scan using regex?
# irb(main):045> arr
# => "Ruby on Rails"
# irb(main):046> arr.scan(/\w/)
# => ["R", "u", "b", "y", "o", "n", "R", "a", "i", "l", "s"]

# array concatenation. would be responsible for assigning the concatdnd array to variableirb(main):047> arr = [1, 2, 3, 4, 5]
# => [1, 2, 3, 4, 5]
# irb(main):048> arr1 = [25, 10, 3, 2, 10, 100, 100]
# => [25, 10, 3, 2, 10, 100, 100]
# irb(main):049> arr + arr1
# => [1, 2, 3, 4, 5, 25, 10, 3, 2, 10, 100, 100]
# irb(main):050> arr
# => [1, 2, 3, 4, 5]
# irb(main):051> arr1
# => [25, 10, 3, 2, 10, 100, 100]
# so .....
# irb(main):052> arr2 = arr + arr1
# => [1, 2, 3, 4, 5, 25, 10, 3, 2, 10, 100, 100]
# irb(main):053> arr2
# => [1, 2, 3, 4, 5, 25, 10, 3, 2, 10, 100, 100]

# other methods within the array class
# irb(main):076> arr2
# => [1, 2, 3, 4, 5, 25, 10, 3, 2, 10, 100, 100]
# irb(main):077> arr2.first
# => 1
# irb(main):078> arr2.last
# => 100
# irb(main):079> arr2.first(3)
# => [1, 2, 3]
# irb(main):081> arr2.last(3)
# => [10, 100, 100]
# irb(main):082> arr.reverse
# => [5, 4, 3, 2, 1]
# irb(main):083> arr2.reverse
# => [100, 100, 10, 2, 3, 10, 25, 5, 4, 3, 2, 1]
# irb(main):084> arr2
# => [1, 2, 3, 4, 5, 25, 10, 3, 2, 10, 100, 100]
# irb(main):085> arr2.reverse.first(3)
# => [100, 100, 10]
# irb(main):090> arr2.reverse.last(3)
# => [3, 2, 1]
print "--------------------- enumerating --------------------- \n"
print "#{arr = []
         3.times { |i| arr.push i }
         arr} <--   arr=[]                   # to open an empty array
                3.times {|i| arr.push i} # enumerates 3 times, pushing index i to array
                arr                      # then prints the new array
                                         # note to self: is |i| indicating .abs?" # TODO: answer question
print "\n----------------------- strings! ----------------------\n"
# ----- Strings and array stuff -----
# irb(main):033> arr
# => ["R", "u", "b", "y", " ", "o", "n", " ", "R", "a", "i", "l", "s"]
# irb(main):034> arr.size
# => 13
# ---- fun:
# irb(main):035> "Ruby on Rails".split.join
# => "RubyonRails"
# irb(main):036> "Ruby on Rails".split.join.split("")
# => ["R", "u", "b", "y", "o", "n", "R", "a", "i", "l", "s"]
# irb(main):037> arr
# => ["R", "u", "b", "y", " ", "o", "n", " ", "R", "a", "i", "l", "s"]
# irb(main):038> arr.join("")
# => "Ruby on Rails"

print "\n\n ---------- HASHES ---------- \n\n"
# syntax: irb(main):092> credentials = {}
# => {}
# irb(main):093> credentials = { public_key: "asdf1234", secret_key: "4321fdsa" }
# => {:public_key=>"asdf1234", :secret_key=>"4321fdsa"}

# where are the keys?
# irb(main):094> credentials
# => {:public_key=>"asdf1234", :secret_key=>"4321fdsa"}
# irb(main):095> credentials[:public_key]
# => "asdf1234"
# irb(main):096> credentials[:secret_key]
# => "4321fdsa"

# updating keys
# irb(main):097> credentials[:public_key] = "asdfasdfasdf"
# => "asdfasdfasdf"
# irb(main):098> credentials[:public_key]
# => "asdfasdfasdf"
# irb(main):099> credentials
# => {:public_key=>"asdfasdfasdf", :secret_key=>"4321fdsa"}

# adding new key: value pairs
# irb(main):100> credentials[:region] = "aws-east2"
# => "aws-east2"
# irb(main):101> credentials
# => {:public_key=>"asdfasdfasdf", :secret_key=>"4321fdsa", :region=>"aws-east2"}

# check! credentials size:
# irb(main):101> credentials
# => {:public_key=>"asdfasdfasdf", :secret_key=>"4321fdsa", :region=>"aws-east2"}
# irb(main):102> credentials.size
# => 3

# check! see keys, see values:
# irb(main):103> credentials.keys
# => [:public_key, :secret_key, :region]
# irb(main):104> credentials.values
# => ["asdfasdfasdf", "4321fdsa", "aws-east2"]

# deleting in hash
# irb(main):106> credentials.delete:region
# => "aws-east2"
# irb(main):107> credentials
# => {:public_key=>"asdfasdfasdf", :secret_key=>"4321fdsa"}

# creating this array and doing some stuff to it
# me = {name: "Carrie", age: 31, hobbies: ["long walks on the beach", "programming", "horror films"]}
# =>
# {:name=>"Carrie",
# ...
# irb(main):115> me[:hobbies]
# => ["long walks on the beach", "programming", "horror films"]
# irb(main):116> me[:hobbies].join(", ")
# => "long walks on the beach, programming, horror films"
# irb(main):117> me[:hobbies]
# => ["long walks on the beach", "programming", "horror films"]
# irb(main):118> me[:hobbies].size
# => 3

# nested hashes

# :boy_dog    # This is a symbol
# "boy_dog"   # This is a string - DIFFERENT

# why it matters?
# Symbols are immutable and memory-efficient for hash keys.
# Key-value syntax
# { boy_dog: "Fido" }     # ✅ Modern shorthand - colon AFTER key name
# { :boy_dog => "Fido" }  # ✅ Old syntax - colon BEFORE key name as symbol
# Both mean the same thing

# irb(main):123> pets = {boy_dog: {name: "Boy"}, girl_dog: {name: "Little One"}}
# => {:boy_dog=>{:name=>"Boy"}, :girl_dog=>{:name=>"Little One"}}
# irb(main):124> pets[:boy_dog]
# => {:name=>"Boy"}
# irb(main):125> pets[:girl_dog]
# => {:name=>"Little One"}
# irb(main):126> pets.dig(:boy_dog, :name)
# => "Boy"

# using ruby Blocks
# irb(main):127* me[:hobbies].each do |hobby|
# irb(main):128*   puts hobby.capitalize
# irb(main):129> end
# Long walks on the beach
# Programming
# Horror films
# => ["long walks on the beach", "programming", "horror films"]
# NOTE: |hobby| (2nd line) can be anything |x| |i| |foo| |bar| |baz|

# example2:
# irb(main):133* me[:hobbies].each do |hobby|
# irb(main):134*   puts hobby.capitalize.swapcase!
# irb(main):135> end
# lONG WALKS ON THE BEACH
# pROGRAMMING
# hORROR FILMS
# => ["long walks on the beach", "programming", "horror films"]

# example of alternative ?
# => {:name=>"Carrie", :age=>31, :hobbies=>["long walks on the beach", "programming", "horror films"]}
# irb(main):140* me.each do |details|
# irb(main):141*   p details
# irb(main):142> end
# [:name, "Carrie"]
# [:age, 31]
# [:hobbies, ["long walks on the beach", "programming", "horror films"]]
# => {:name=>"Carrie", :age=>31, :hobbies=>["long walks on the beach", "programming", "horror films"]}
# irb(main):143* me.each do |asdfwefiw|
# irb(main):144*   p asdfwefiw
# irb(main):145> end
# [:name, "Carrie"]
# [:age, 31]
# [:hobbies, ["long walks on the beach", "programming", "horror films"]]
# => {:name=>"Carrie", :age=>31, :hobbies=>["long walks on the beach", "programming", "horror films"]}
# irb(main):146>

# the above is different with puts than p
# irb(main):149* me.each do |details|
# irb(main):150*   puts details
# irb(main):151> end
# name
# Carrie
# age
# 31
# hobbies
# long walks on the beach
# programming
# horror films
# => {:name=>"Carrie", :age=>31, :hobbies=>["long walks on the beach", "programming", "horror films"]}
# irb(main):152>

# the above is also different with print
# irb(main):152* me.each do |details|
# irb(main):153*   print details
# irb(main):154> end
# [:name, "Carrie"][:age, 31][:hobbies, ["long walks on the beach", "programming", "horror films"]]=> {:name=>"Carrie", :age=>31, :hobbies=>["long walks on the beach", "programming", "horror films"]}

# the following will assign key to key variable val to the val variable
# irb(main):155* me.each do |key, val|
# irb(main):156*   puts "#{key} => #{val}"
# irb(main):157> end
# name => Carrie
# age => 31
# hobbies => ["long walks on the beach", "programming", "horror films"]
# => {:name=>"Carrie", :age=>31, :hobbies=>["long walks on the beach", "programming", "horror films"]}

# another way to make key-value pairs is with"hash rocket" (older style) but :symbol more modern
# irb(main):158> {"foo" => "bar"}
# => {"foo"=>"bar"}

# what happens when a key doesn't exist?
# irb(main):159> me[:location]
# => nil

# now learning merge... where (lost train of thought)
# irb(main):160> new_age = {age: 39}
# => {:age=>39}
# irb(main):161> me
# => {:name=>"Carrie", :age=>31, :hobbies=>["long walks on the beach", "programming", "horror films"]}
# irb(main):162> new_age = {age: 39}
# => {:age=>39}
# irb(main):163> me.merge(new_age)
# => {:name=>"Carrie", :age=>39, :hobbies=>["long walks on the beach", "programming", "horror films"]}

# other thing on a new thing
# irb(main):165> h = {["foo", "bar"] => "baz"}
# => {["foo", "bar"]=>"baz"}
# irb(main):168> h[["foo", "bar"]]
# => "baz"

# alternatives for stuff #TODO: Revisit when something practical arises in hashes
# See that when evaluating b[:name] is nil ?
# irb(main):174> a = {name: "Carrie"}
# => {:name=>"Carrie"}
# irb(main):175> b = {"name" => "George"}
# => {"name"=>"George"}
# irb(main):176> a[:name]
# => "Carrie"
# irb(main):177> b[:name]
# => nil
# irb(main):178> b["name"]
# => "George"

# ------------ defining methods --------------- #

# irb(main):030* def simple
# irb(main):031*   puts "Hello world"
# irb(main):032> end
# => :simple
# irb(main):033> simple
# Hello world
# => nil

# passing to method
# irb(main):036*   puts "hello, #{name}"
# irb(main):037> end
# => :say_hello
# irb(main):039> say_hello("Carrie")
# hello, Carrie
# => nil

# irb(main):044* def say(greeting, name)
# irb(main):045*   puts("#{greeting}, #{name}")
# irb(main):046> end
# irb(main):047> say("hi", "you")
# hi, you

#irb(main):048* def say(greeting = "hello", name = "user")
# irb(main):049*   puts "#{greeting}, #{name}"
# irb(main):050> end
# => :say
# irb(main):051> say()
# hello, user
# => nil
# irb(main):052> say("hi")
# hi, user
# => nil
# irb(main):053> say("","")
# ,
# => nil
# irb(main):054> say(,"")
# <internal:kernel>:187:in `loop': .........

# assigning inputs for return values out of order
#irb(main):061* def say(greeting:, name:)
# irb(main):062*   puts "#{greeting}, #{name}"
# irb(main):063> end
# => :say
# irb(main):064> say(greeting: "Hi", name:"Nosforatu")
# Hi, Nosforatu
# => nil
# irb(main):065> say(name: "1st", greeting: "second")
# second, 1st
# => nil

# assigning inputs for return value and dealing defaults
# irb(main):067* def say(greeting: "hey", name:)
# irb(main):068*   puts "#{greeting}, #{name}"
# irb(main):069> end
# => :say
# irb(main):070> say(name:"myname")
# hey, myname
