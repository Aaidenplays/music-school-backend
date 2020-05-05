class UserInstrumentsController < ApplicationController
    def index
        uis = UserInstrument.all 
        render json: uis
    end

    def create
        if params[:instructor]
            ui = UserInstrument.create(instrument_id: params[:instrument], instructor_id: params[:instructor])
        elsif params[:student]
            ui = UserInstrument.create(instrument_id: params[:instrument], student_id: params[:student])
        end
        render json: ui
    end
end
