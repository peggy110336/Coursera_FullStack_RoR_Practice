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

puts "----Arrays----"

het_arr = [1, "two", :three] #複合型(heterogeneous)array
puts het_arr[1]

#for string array
arr_words = %w{ what a great day today! }
puts arr_words[-2]
puts "#{arr_words.first} - #{arr_words.last}"
#倒數第三個element，取兩個element顯示 => ["great", "today"]
p arr_words[-3, 2]

#直接設定取值範圍 => ["great", "day", "today"]
p arr_words[2..4]

#將字串用","分開 => what,a,great,day,today
puts arr_words.join(",")

puts "------Modifying arrays------"
#Want a stack(LIFO)? add element by "<<"" or "push"
stack = []; stack << "one"; stack.push("two")
puts stack.pop

#Want a queue(FIFO)? add element by "push"
queue = []; queue.push "one"; queue.push "two"
#stach's pop = queue's shift
puts queue.shift

a = [5,3,4,2].sort!.reverse!
p a
# 2 random elements
p a.sample(2) 

#insert "33" in array's index 6
a[6] = 33
p a #=> [5,4,3,2,nil.nilm,33]

puts "------process arrays------"
b = [1,3,4,7,8,10]
b.each { |num| print num} # => all will print
puts

new_arr = b.select { |num| num > 4}
p new_arr # => [7,8,10]
new_arr = b.select { |num| num < 10}.reject{ |num| num.even?}
p new_arr # => [1,3,7]

#multiply each element by 3 producing new array
new_arr = b.map {|x| x *3 }
p new_arr # => [3,9,12,21,24,30]










