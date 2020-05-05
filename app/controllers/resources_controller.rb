class ResourcesController < ApplicationController
    def create
        resource = Resource.create(instructor_id: params[:instructor])
        render json: resource
    end

    def index
        resources = Resource.all
        render json: resources
    end
end
