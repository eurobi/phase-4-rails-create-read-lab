class PlantsController < ApplicationController
    wrap_parameters format: []
    def index
        render json: Plant.all
    end
    def show
        render json: Plant.find_by(id: params[:id])
    end
    def create
        plant = Plant.create(params.permit(:name, :image, :price))
        render json: plant, status: :created
    end
end
