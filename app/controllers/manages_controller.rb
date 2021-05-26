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

    end

    def edit

    end

    def update

    end

    def destroy
        
    end

    private
    def manage_params
        params.require(:manage).permit(:name, :place, :number)
    end
end
