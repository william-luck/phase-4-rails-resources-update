class LikesController < ApplicationController

    # def index
    #     birds = Bird.all
    #     render json: birds, only: [:likes]
    # end

    def update
        bird = Bird.find_by(id: params[:id])
        if bird
            bird.update(likes: bird.likes + 1)
            render json: bird
        else
            render json: {error: 'Bird not found'}, status: :not_found
        end
    end

end
