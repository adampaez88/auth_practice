class TigersController < ApplicationController
    before_action :authenticate, only: [:create]
    def index
        tigers = Tiger.all
        render json: tigers
    end

    def create
        tiger = Tiger.create(name: params[:name], user: @user)
        render json: tiger
    end
end
