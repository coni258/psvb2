class ConsultantsController < ApplicationController
  def index
    @consultants = Consultant.all
  end

  def show
    @consultant = Consultant.find(params[:id])
  end

  def new
    @consultant = Consultant.new
  end

  def create
    @consultant = Consultant.new(consultant_params)

    if @consultant.save 
      redirect_to @consultant
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private
    def consultant_params
      params.require(:consultant)
    end
end
