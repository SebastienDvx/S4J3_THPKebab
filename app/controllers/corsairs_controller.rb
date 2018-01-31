class CorsairsController < ApplicationController

  def new
  end

  def create
    @moussaillon = Corsair.new    #(corsair_params)
    @moussaillon.first_name = params[:first_name]
    @moussaillon.age = params[:age]
    @moussaillon.save

    redirect_to @moussaillon

  end

  def show
    @moussaillon = Corsair.find(params[:id])
  end

  private

  # def corsair_params
  #   params.require(:corsair).permit(:first_name, :age)
  # end
end
