class CorsairsController < ApplicationController

  def new
    @moussaillon = Corsair.new
  end

  def create
    @moussaillon = Corsair.new(params[:corsair])  #(corsair_params)
    @moussaillon.first_name = params[:first_name]
    @moussaillon.age = params[:age]
    @moussaillon.save
    p params

    redirect_to @moussaillon

  end

  def show
    @moussaillon = Corsair.find(params[:id])
  end

  def edit
    @moussaillon = Corsair.find(params[:id])
  end

  def update
    @moussaillon = Corsair.find(params[:id])

    if @moussaillon.update(corsair_params) #(corsair_params)
      redirect_to @moussaillon
    else
      render 'edit'
    end
  end

  def index
    @moussaillons = Corsair.all
  end

  # private

  def corsair_params
    params.require(:corsair).permit(:first_name, :age) # :likeness, :bio)
  end

end
