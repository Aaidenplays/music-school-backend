class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students, :include => [:user]
    end
    def create
        student = Student.create(name: params[:name] ,user_id: params[:user])
        render json: student
    end
end
