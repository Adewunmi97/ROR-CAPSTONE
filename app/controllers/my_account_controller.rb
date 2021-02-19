class MyAccountController < ApplicationController
    def index
        @my_account = Current.user.my_account
    end
end