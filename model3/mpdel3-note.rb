puts "Rails is a dynamic web application."

puts "MVC:Model View Control."

puts "Server looks in Public before look anywhere."

puts "產生一個controller and action. 指令：「rails g controller [controller name] [Action name] 」"

puts "The View file is .erb extension. ERB is a templating library that lets you embed Ruby into HTML file."

puts "Two tag patterns to learn："
puts "1.<%...ruby code...%> -> evaluate Ruby code. 2.<%=...ruby code...%> -> output evaluate Ruby code."

puts "Add new view by self,but it error. Because the routes set the path [greeter/hello]. So,we have to add the path to goodbye's view."
puts "rake routes 指令查看已設定的view's routes."

puts "cannot store values in th controller's instance variable."
puts "If you want to store, using 1.session 2.database."
puts "Keep business logic out if view. write it in controller."

puts "helper is like a macro(巨集) or a formatter for the view."
puts "<%= link_to [name_str], [path or url] %>."
puts "The path can put url or relative path. The relative path is auto generate by rails.The format is [controller]_[view]_path."

