class PlantsController < ApplicationController
    wrap_parameters format: []

    def index
        @plants = Plant.all
        render json: @plants
    end

    def show
        @plant = Plant.find_by(id: params[:id])
        if @plant
            render json: @plant
        else
            render json: {error: "Cannot find the plant"}, status: 404
        end
    end

    def create
        plant =  Plant.create(plant_parameters)
        render json: plant, status: 201
    end

    private

    def plant_parameters
        params.permit(:name, :image, :price)
    end
end
