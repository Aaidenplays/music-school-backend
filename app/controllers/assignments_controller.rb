class AssignmentsController < ApplicationController
    def index
        assignments = Assignment.all
        render json: assignments
    end

    def create
        assignment = Assignment.create(
            student_id: params[:student],
            instructor_id: params[:instructor],
            description: params[:description],
            status: params[:status]
        )
        render json: assignment
    end

    def show
        assignment = Assignment.find_by(id: params[:id])
        render json: assignment

    end

    def update
        assignment = Assignment.find_by(id: params[:id])
        if params[:status]
            assignment.update!(status: params[:status])
        end
        if params[:feedback]
            assignment.update!(feedback: params[:feedback])
        end

        render json: assignment
    end

    def destroy
    
    end

    private

end
