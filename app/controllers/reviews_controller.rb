class ReviewsController < ApplicationController
    # before_action :authorized
    #All
    def index 
        render json: Review.all, status: :ok
    end
    
    #GET
    def show 
        if set_review
            render json: set_review, status: :ok
        else
           render json: {error: "Review Does Not Exist"}, status: :not_found
        end
    end

    #CREATE
    def create 
        @review = Review.new(review_params)
        if @review.save
            render json: @review, status: :created 
        else 
            render json: {error: "Review Not Updated"}, status: :unprocessable_entity
        end
    end

    #PATCH & PUT
    def update 
        @review=Review.update(review_params)
        if @review
            render json: @review, status: :ok
        else 
            render json: {error: "Not Updated"}, status: :unprocessable_entity
        end
    end

    def destroy 
        set_review.destroy
        head :no_content
    end

    private 
    def set_review
        review = Review.find_by(id: params[:id])
    end

    def review_params 
        params.permit(:review).require(:username, :rating, :comment)
    end

end
