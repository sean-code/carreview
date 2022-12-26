class CarsController < ApplicationController

    #All Cars
    def index 
        user = User.find_by(id: session[:user_id])
        car = Car.all
        render json: car, except: [:created_at, :updated_at], status: :ok
    end

    #GET /cars/ 1
    def show 
        if set_car
            render json: set_car, status: :ok
        else
            render json: {error: "Car Does Not Exist"}, status: :not_found
        end
    end

    #POST -- For the Add Car Button
    def create
        @user = User.find_by(id: session[:user_id])
        @car = Car.create(car_params)
        if @car
          render json: @car, status: :created
        else
          render json: @car.errors, status: :unprocessable_entity
        end
    end

    #PATCH
    def update
        @car=Car.update(car_params)
        if @car 
            render json: @car, status: :ok
        else 
            render json: {error: "Not Updated"}, status: :unprocessable_entity
        end
    end

    #DELETE
    def destroy 
        set_car.destroy
        head :no_content
    end

    

    private
    # Use callbacks to share common setup or constraints between actions.
    def authorize
        return render json: { errors: ["Not authorized"] }, status: :unauthorized unless session.include? :user_id
    end

    def set_car
        @car = Car.find_by(id: params[:id])
    end
    # Only allow trusted parameter "white list" through
    def car_params
        params.permit(:price, :make, :model, :fuel_type, :transmission, :mileage, :engine_size, :year, :image,  :mileage, :image)
    end

end

