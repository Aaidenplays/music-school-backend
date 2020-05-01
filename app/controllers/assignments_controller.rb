class AssignmentsController < ApplicationController
    def index
        assignments = Assignment.all
        render json: assignments
    end

    def create
        assignment = Assignment.create(
            student_id: params[:student],
            instructor_id: params[:instructor],
            description: params[:description]
        )
        render json: assignment
    end

    def show
        assignment = Assignment.find_by(id: params[:id])
        render json: assignment

    end

    def update

    end

    def destroy
    
    end

    private

end
