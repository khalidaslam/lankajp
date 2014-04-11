class HomeController < ApplicationController
	# Important Cities ID  1,2,3,4,13,6,7,22,5,11,8,10,30,12,14,37
	# Imp Classification ID 13,14,8,3,5,11,16,21
  def index
  	@jobs = Job.where(created_at: 24.days.ago..Time.now).order("updated_at DESC")
  	@jobsflash = Job.where(created_at: 15.days.ago..Time.now).order("updated_at DESC").limit(5)
  	@footerlinks = true
  end
end
