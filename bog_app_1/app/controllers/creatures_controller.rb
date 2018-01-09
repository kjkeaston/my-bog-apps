class CreaturesController < ApplicationController

  def index
    @creatures_poptart = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature_params_potato = params.require(:creature).permit(:name, :description, :age)

    creature = Creature.new(creature_params_potato)
    if creature.save
      redirect_to creatures_path
      # same as => redirect_to root_path
      # OR redirect_to "/creatures"
    end
  end

# the URL is localhost:3000/creatures/15
  def show
    # this is the creature with ID 15
    @creature_show_one = Creature.find_by_id(params[:id])
    # creature_id = params[:id]
    # @creature = Creature.find_by_id(creature_id)

    
  end


end





