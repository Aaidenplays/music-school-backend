class MaterialAssignmentsController < ApplicationController
    def create
        ma = MaterialAssignment.create(material_id: params[:material], assignment_id: params[:assignment])
        render json: ma   
    end

    def index
        mas = MaterialAssignment.all
        render json: mas
    end
end
