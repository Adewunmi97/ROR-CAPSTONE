# class RegistrationsController < ApplicationController
#     def new
#         @user = User.new
#     end
#     def create
#         @user = User.new(user_params)
#             if @user.save
#                 session[:user_id] = @user_id
#                 flash[:notice] = "registration successful"
#                 redirect_to root_path
#             else
#                 @user.errors.full_messages.each do |message|
#                     flash.now = message
#                 end
#                 render :new
#             end
#     end

#     private
#     def user_params
#         params.require(:user).permit(:username, :email, :password)
#     end
# end