class InstructorsController < ApplicationController
    def create
        instructor = Instructor.create(name: params[:name] ,user_id: params[:user])
        render json: instructor
    end
    def index
        instructors = Instructor.all
        render json: instructors, :include => [:user, :students]
    end
end
