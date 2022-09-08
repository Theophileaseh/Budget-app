class HomesController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  # GET /homes or /homes.json
  def index
    redirect_to categories_path if user_signed_in?
  end
end
