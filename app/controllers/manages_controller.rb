class ManagesController < ApplicationController
    def index
        @manages = Manage.all
    end

    def new
        @manage = Manage.new
    end

    def create
        @manage = Manage.new(manage_params)
        @manage.save
        redirect_to manages_path
    end

    def show
        @manage = Manage.find(params[:id])
    end

    def edit
        @manage = Manage.find(params[:id])
    end

    def update
        @manage = Manage.find(params[:id])
        @manage.update(manage_params)
        redirect_to manages_path
    end

    def destroy
        manage = Manage.find(params[:id])
        manage.destroy
        redirect_to manages_path
    end

    private
    def manage_params
        params.require(:manage).permit(:name, :place, :number)
    end
end
