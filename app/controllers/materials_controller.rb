class MaterialsController < ApplicationController
    def create
        material = Material.create(resource_id: params[:resource] ,url: params[:url])
        render json: material
    end

    def index
        materials = Material.all
        render json: materials
    end
end
