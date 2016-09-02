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

puts "=====Arrays====="

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


puts "=====Ranges====="
some_range = 1..3
#印出這個範圍的最大值
puts some_range.max
#boolean，是否包含2? => true
puts some_range.include? 2

puts (1...10) === 5.3
puts ('a'...'r') === "r" # "..."，不包含最後的element
#將這個範圍，轉為「陣列」，並隨機取出兩個element
p ('k'..'z').to_a.sample(2)

age = 55
case age
	when 0..12 then puts "Still a baby"
	when 13..99 then puts "Teenager at hert!"
	else puts "You are getting older..."
end
# => 複習case用法，結果為"Teenager at heart!"

puts "====Hashes===="
# also known as associative arrays(關聯性的陣列)
# 用法：Hashes_name = { "key" => "value", "key2" => "value2"}

editor_props = { "font" => "Arial", "size" => "12", "color" => "blue"};
puts editor_props.length # => 3
puts editor_props["font"] #印出 key為font的vlue => Arial

#直接設定Key 和 vlaue，並加入Hashes.
#用法：Hashes_name["key"] = "value"
editor_props["background"] = "blue" 

#If Hashes is created with "Hash.new(0)" --> 0 is returned
#If you try to access a value which doesn't exit --> nil is returned.

puts "Hashes API is imporant. The url is on assigement."

#宣告一個Hash，裡面沒有東西。宣告一個句子，切割後，丟進去。尋找句子中小寫的單字為key，並將其value+1。
#Note: Why +1 = 2? 原本Hash為0，丟句子進去後，找得到東西所以為1，在+1，所以值為2。
word_frequency = Hash.new(0)

sentence = "Chicka chicka boom boom"
sentence.split.each do |word|
	word_frequency[word.downcase] +=1
end

p word_frequency # => {"chicka" => 2, "boom" => 2}


#If a Hash is the last argument to a method {} are "optional(常數)".
# Named parameter "like" behavior... 
def adjust_colors (props = {foreground: "red", background: "white"}) 
  puts "Foreground: #{props[:foreground]}" if props[:foreground] 
  puts "Background: #{props[:background]}" if props[:background] 
end 
adjust_colors # => foreground: red 
              # => background: white 

adjust_colors ({ :foreground => "green" }) # => foreground: green 

# Note : 通常在Ruby，用第二個寫法來宣告Hash，比較常見。
adjust_colors background: "yella" # => background: yella 

adjust_colors :background => "magenta" # => background: magenta


puts "----hash的寫法----"
# Let's say you have a Hash 
a_hash = { :one => "one" } 

# Then, you output it 
puts a_hash # => {:one=>"one"} 

# If you try to do it in one step - you get a SyntaxError 
# puts { :one => "one" } 

# RUBY GETS CONFUSED AND THINKS {} IS A BLOCK!!!

# To get around this - you can use parens 
puts ({ :one => "one" }) # => {:one=>"one"} 

# Or drop the {} altogether... 
puts one: "one"# => {:one=>"one"} 




puts "====Class===="
#Being with @ ==>@name "name"'s instance valuable
#Not declared(宣告) ==> Spiring into existence(存在) when first used.
#Available to all instance methods of the class

#"initialize" method is a special method likes Java's constuctor.
#instance valuable is private. If you wnat to access,you have to define Getter and Setter methods.
#Short form for setting and getting data => attr_
#self ==> liks Java's super. using it to call itself or local valuable.

class Person 
  attr_reader :age 
  attr_accessor :name 

  def initialize (name, ageVar) # CONSTRUCTOR 
    @name = name 
    self.age = ageVar # call the age= method 
    puts age 
  end
  
  #def name   Getter 的另一種寫法。 
   # @name 
  #end 
   
  def age= (new_age)  # Setter的另一種寫法，這邊用來設定age的範圍（條件）
    @age = new_age unless new_age > 120 
  end

  def get_info 
    @additional_info = "Interesting" #設定local valuable.
    "Name: #{@name}, age: #{@age}, You are #{@additional_info}." 
  end  
end 

person1 = Person.new("Kim", 13) # => 13 
puts "My age is #{person1.age}" # => My age is 13 
person1.age = 130 # Try to change the age 
puts person1.age # => 13 (The setter didn't allow the change)
puts person1.get_info #Name: Kim, age: 13, You are Interesting.








