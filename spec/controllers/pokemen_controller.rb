require 'rails_helper'

class PokemenController < ApplicationController
    before_action :set_pokemen, only: [:show, :update, :destroy]

    # GET /pokemen
    describe 'GET /pokemen' do
    def index
      @pokemen = pokemen.all
      json_response(@pokemen)
    end
  
    # POST /pokemen
    def create
      @pokemen = pokemen.create!(pokemen_params)
      json_response(@todo, :created)
    end
  
    # GET /pokemen/:id
    describe 'GET /pokemen/:id' do
    def show
      json_response(@pokemen)
    end
  
    # PUT /pokemen/:id
    def update
      @pokemen.update(pokemen_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @pokemen.destroy
      head :no_content
    end
  
    private
  
    def pokemen_params
      # whitelist params
      params.permit(:title, :created_by)
    end
  
    def set_pokemen
      @pokemen = Todo.find(params[:id])
    end
  end
end
