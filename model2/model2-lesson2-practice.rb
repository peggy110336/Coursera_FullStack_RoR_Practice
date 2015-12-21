puts "----Lesson2-Strings API----"
#單引號字串，會全部印出。不會特別處理特殊字元。
single_quoted = 'ice cream \n followed by it\'s a party.'
double_quoted = "ice cream \n followed by it\'s a party."

puts single_quoted
puts double_quoted #=>ice cream 
 						#followed by it's a party.

def multuply(one, two)
	# #{}=>插值
	"#{one} multuplied by #{two} equals #{one * two}."
end

puts multuply(5, 3)

puts "----<More Strings>----"
my_name = " tim"
#這個不會去更動到my_name的預設值，因為它會直接copy by value。
#所以會發現下面的 p my_name，還是會印出原本的" tim"
puts my_name.lstrip.capitalize #將t變成大寫
p my_name
my_name.lstrip!
#Ruby的字串，為陣列形式。
my_name[0] = 'K'
puts my_name

#查詢可用的API
#"hello".methods.grep /case/ => 可使用的API裡包括”case“的

puts "----Array----"
