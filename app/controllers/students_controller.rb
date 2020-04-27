class StudentsController < ApplicationController
    def create
        student = Student.create(name: params[:name] ,user_id: params[:user])
        render json: student
    end
    def index
        students = Student.all
        render json: students
    end
end
