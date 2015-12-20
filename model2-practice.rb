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

