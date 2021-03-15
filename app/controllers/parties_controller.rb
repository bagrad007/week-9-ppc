class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def show
    @party = Party.find(params[:id])
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(party_params)
    if @party.save
      redirect_to party_path(@party)
    else
      render :new
    end
    # binding.pry
  end

  private

  def party_params
    params.require(:party).permit(:name, :budget, :date)
  end
end
