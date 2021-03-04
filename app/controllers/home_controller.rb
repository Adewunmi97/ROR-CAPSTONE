class HomeController < ApplicationController
    def index
      @user = nil
      @opinions = nil
        if user_signed_in?
          @user = User.find_by(id: current_user.id)
          partners =[].concat(current_user.followers, current_user.followed_users).map { |user| user.id }
          @users_to_follow = User.all.reject {|user| current_user.id == user.id || user.id.in?(partners)}
          @opinions = Opinion.includes(:author).all.most_recent.select do |opinion|
            opinion_id = opinion.author.id
            opinion_id.in?(partners)
          end
        end
    end
end
