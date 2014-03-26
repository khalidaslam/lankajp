class HomeController < ApplicationController
	# Important Cities ID  1,2,3,4,13,6,7,22,5,11,8,10,30,12,14,37
	# Imp Classification ID 13,14,8,3,5,11,16,21
  def index
  	@jobs = Job.all
  	@jobsflash = Job.find(:all, :order => "id desc", :limit => 5)
  end
end
