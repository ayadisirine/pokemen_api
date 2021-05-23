

class PokemenController < ApplicationController
    before_action :set_pokemen, only: [:show, :update, :destroy]

    # GET /pokemen
    def index
      @pokemens = Pokeman.all
      json_response(@pokemens)
    end
  
    # POST /pokemen
    def create
      @pokemen = Pokeman.create!(pokemen_params)
      json_response(@pokemen, :created)
    end
  
    # GET /pokemen/:id
    
    def show
      json_response(@pokemen)
    end
  
    # PUT /pokemen/:id
    def update
      @pokemen.update(pokemen_params)
      head :no_content
    end
  
    # DELETE /pokemen/:id
    def destroy
      @pokemen.destroy
      head :no_content
    end
  
    private
  
    def pokemen_params
      # whitelist params
      params.permit( :name, :type1 ,:type2 ,:total ,:Hp , :Attack, :Defense ,:Sp_Atk, :Sp_Def, :Speed, :Generation, :Legendary, :created_at, :updated_at)
      
    end
  
    def set_pokemen
      @pokemen = Pokeman.find(params[:id])
    end
  
end
