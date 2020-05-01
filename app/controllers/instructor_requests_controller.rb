class InstructorRequestsController < ApplicationController
    def create
        instructor_request = InstructorRequest.create(instructor_id: params[:instructor], student_id: params[:student], status: params[:status])
            # binding.pry
        render json: instructor_request
    end

    def update
        instructor_request = InstructorRequest.find_by(id: params[:id])
        instructor_request.update!(status: params[:status])
        render json: instructor_request
    end

    def index
        instructor_requests = InstructorRequest.all
        render json: instructor_requests, each_serializer: InstructorRequestSerializer
    end

    def destroy
        instructor_request = InstructorRequest.find_by(id: params[:id])
        instructor_request.destroy()
    end
end
