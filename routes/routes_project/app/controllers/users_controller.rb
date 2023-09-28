class UsersController < ApplicationController
    # def create
    #     render json: params
    #   end
    def show
        render json: params
    end
    def create
        user = User.new(params.require(:user).permit(:name, :email))
        if user.save
          render json: user
        else
          render json: user.errors.full_messages, status: :unprocessable_entity
        end
      end
    def update
        user1 = User.new(params.require(:user).permit(:name, :email))
        user.update(user1.id ,:name,user1.name).update(user1.id ,:email,user1.email)
    end
end