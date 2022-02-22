class CorporatesController < ApplicationController
  protect_from_forgery except: :update
  def index
    @corporates = Corporate.all
  end

  def new
    @corporate = Corporate.new
  end

  def create
    @corporate = Corporate.create(corporate_params)
    if @corporate.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @corporate = Corporate.find(params[:id])
  end

  def update
    @corporate = Corporate.find(params[:id])
    redirect_to corporate_path(@corporate.id) if @corporate.update(corporate_params)
  end

  def destroy
    @corporate = Corporate.find(params[:id])
    @corporate.destroy
    redirect_to root_path
  end

  private

  def corporate_params
    params.require(:corporate).permit(:name, :industry, :capital, :earnings, :employee, :place, :average_income, :average_age,
                                      :business_content, :human_resource, :strength, :weakness, :selection_method, :others)
  end
end
