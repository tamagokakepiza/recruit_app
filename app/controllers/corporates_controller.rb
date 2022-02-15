class CorporatesController < ApplicationController
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

  private

  def corporate_params
    params.require(:corporate).permit(:name, :industry, :capital, :earnings, :employee, :place, :average_income, :average_age,
                                      :business_content, :human_resource, :strength, :weakness, :selection_method, :others)
  end
end
