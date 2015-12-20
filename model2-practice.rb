#a = 3
#while a < 10
#	puts a
#	a++
#end

time_2 = 2
time_2 *= 2 while time_2 < 100
puts time_2

#True/False
puts "======True/False example======"
puts "0 is true" if 0
#string literal in condition ->詢問你是否確定直接用字串當作條件式敘述
puts "false is true" if "false"
puts "no way - false is false" if false
#string literal in condition
puts "empty string is true" if ""
#string literal in condition
puts "nil is true" if "nil"
puts "no way - nil is false" if nil

#Triple Equal
puts "======Triple Equal example======"
if /sera/ === "Coursera"
	puts "Triple Equal"
end
if "coursera" === "coursera"
	puts "also works"
end
if Integer === 21
	puts "21 is an Integer"
end

# case when (like if else)
puts "======case when example======"
age = 21
case
	when age >= 21
		puts "You can buy a drink"
	when 1 == 0
		puts "writren by a drunk programmer"
	else
		puts "Default condition"
end

name = "Fisher"
case name
	when /fish/i then puts "something is fishy here"
	when 'Smith' then puts "Your name is fisher"
end

puts "======For Loop example======"
for i in 0..5
	puts i
end

puts "======Methods example======"
def simple
	puts "no parens"
end
def simple1()
	puts "yes parens"
end

simple()
simple
simple1

#No need to declare type of parameter
def add(one,two)
	one + two
end
# Can return Everything you want
def divide(one,two)
	return "I don't think so" if two ==0
	one / two
end

puts add(10,20)
puts divide(10,0)
puts divide(30,10)

#merhod can be end with "?" and "!"
def can_divide_by?(number)
	return false if number.zero? 
	true
end

puts can_divide_by? 3
puts can_divide_by? 0

#Can have default value
def factorial (n)
	n == 0? 1 : n * factorial(n-1)
end
def factorial_with_default (n = 5)
	n == 0? 1 : n * factorial_with_default(n-1)
end

puts factorial 5
puts factorial_with_default
#雖然給了預設值，但如果在呼叫函數的時候又指定了參數，還是會以指定的為主。
puts factorial_with_default(3) # ==> 6

#Splat operator
def max(one_param, *numbers, another)
	#Variable length passed in become an array 
	numbers.max
end

puts max("Hello", 7,30,100, "HaHa")