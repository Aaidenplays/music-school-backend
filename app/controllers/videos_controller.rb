class VideosController < ApplicationController
    def create
        video = Video.create(
            url: params[:url],
            student_id: params[:student],
            instructor_id: params[:instructor]
        )
        render json: video
    end

    def index
        videos = Video.all
        render json: videos
    end
end
