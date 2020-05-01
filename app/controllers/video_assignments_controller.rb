class VideoAssignmentsController < ApplicationController

    def create
        va = VideoAssignment.create(
            video_id: params[:video],
            assignment_id: params[:assignment]
        )
        render json: va

    end

    def index
        vas = VideoAssignment.all
        render json: vas
    end

end
