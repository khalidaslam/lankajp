class PromotionEmailerController < ApplicationController
before_filter :admin_restrict!

  def new
  	@promotion = Promotion.new
  end

  def create
  	@promotion = Promotion.new(params[:promotion])
    
    if @promotion.valid?
      JobMailer.promotional_message(@promotion).deliver
      flash[:notice] = "Message was sent successfully."
	  redirect_to(root_path)
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end
end
