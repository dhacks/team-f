class RequestsController < ApplicationController
  def create
    # render :text => params
    seller_id = params[:seller_id]
    @req = Request.create(:seller => seller_id, :buyer => current_user.id, :status => false)
    if !@req.nil?
      redirect_to(root_path)
    end
  end

  def edit
  end
end
