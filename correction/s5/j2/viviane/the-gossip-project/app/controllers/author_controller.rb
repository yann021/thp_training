class AuthorController < ApplicationController
  def show_author
    @user = User.find(params["user_id"])
  end
end
