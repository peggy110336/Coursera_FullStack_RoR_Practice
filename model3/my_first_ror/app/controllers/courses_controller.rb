class CoursesController < ApplicationController
  def index
  	#Default to 'jhu' if request parameter not passed in.
  	@search_term = params[:looking_for] || 'jhu'
  	@courses = Coursera.for(@search_term)
  end
end
