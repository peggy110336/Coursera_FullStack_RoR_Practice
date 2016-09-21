class GretterController < ApplicationController
  def hello
  	random_names = ["Alex", "Peggy", "Este"]
  	@name = random_names.sample
  	@time = Time.now
  	@times_display ||= 0
  	@times_display += 1
  end
  
  def goodbye
  end
end
