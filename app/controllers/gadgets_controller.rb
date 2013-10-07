class GadgetsController < ApplicationController
  before_filter :require_user
  def index
    @gadgets = current_user.gadgets
  end
  def new
    @gadget = Gadget.new
  end

  def create
    @gadget = current_user.gadgets.create(gadget_params)
    if @gadget
      params[:gadget][:images].each do |image|
        @gadget.images.create(:image=>image)
      end if params[:gadget][:images]
      redirect_to :action => :index
    else
      render :action => :new
    end
  end

  def destroy
    Gadget.find(params[:id]).destroy
    redirect_to :action=>:index
  end

  private
  def gadget_params
    params.require(:gadget).permit(:name)
  end
end
