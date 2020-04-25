class AssignmentsController < ApplicationController
    def index
        assignments = Assignment.all
        render json: assignments
    end

    def create

    end

    def show
        assignment = Assignment.find_by(id: params[:id])
    end

    def update

    end

    def destroy
    
    end

    private

end
