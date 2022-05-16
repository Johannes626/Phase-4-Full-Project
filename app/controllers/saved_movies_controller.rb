class SavedMoviesController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :save_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :saved_movie_create_error
    # GET /saved_movies
    def index
        render json: SavedMovie.all
    end
    #POST /saved_movies
    def create
        new_save = SavedMovie.new(saved_movie_create_params)
        if new_save.save
            render json: new_save
        else
            render json: {errors: new_save.errors.full_messages}
        end
    end
    #PATCH /saved_movies/:id
    def update
        found_save = SavedMovie.find_by_id(params[:id])
        
        if found_save
            if found_save.update(saved_movie_update_params)
                render json: found_save
            else
                render json: {errors: found_save.errors.full_messages}
            end
        else
            save_not_found
        end
    end
    #DELETE /users/:id
    def destroy
        found_save = SavedMovie.find_by_id(params[:id])
        if found_save
            found_save.destroy
            render json: found_save.id
        else
            save_not_found
        end
    end

    private

    ## STRONG PARAMS-------------
    def saved_movie_create_params
        params.permit(:favorite, :user_id, :movie_id)
    end

    def saved_movie_update_params
        params.permit(:favorite)
    end
    ## STRONG PARAMS-------------

    ## CONTROLLER RESCUE METHODS----------
    def save_not_found 
        render json: { errors: "Could not find saved movie..." }
    end

    def saved_movie_create_error(invalid_save_exception)
        render json: { errors: invalid_save_exception.record.errors.full_messages }
    end
end
