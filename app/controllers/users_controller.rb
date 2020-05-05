class UsersController < ApplicationController
    def create
        # binding.pry
        user = User.create!(
            email: params['user']['email'],
            password: params['user']['password'],
            password_confirmation: params['user']['password_confirmation'],
            user_type: params['user']['user_type'],
            avatarURL: params['user']['url']
        )

        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
            }
        else
            render json: { status: 500 }
        end
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def index
        users = User.all
        render json: users
            # :include => [:student, :instructor]
    end    
end
