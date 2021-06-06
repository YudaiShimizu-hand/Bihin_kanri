class ManagesController < ApplicationController
    def index
        @manages = Manage.all
    end

    def new
        @manage = Manage.new
    end

    def create
        @manage = Manage.new(manage_params)
        if @manage.save
        redirect_to manages_path, notice: "登録成功"
        else
            render 'new'
        end
    end

    def show
        @manage = Manage.find(params[:id])
    end

    def edit
        @manage = Manage.find(params[:id])
    end

    def update
        @manage = Manage.find(params[:id])
        if @manage.update(manage_params)
        redirect_to manages_path
        else
            render 'edit'
        end
    end

    def destroy
        manage = Manage.find(params[:id])
        manage.destroy
        redirect_to manages_path
    end

    def search
        @manages = Manage.search(params[:keyword])
        @keyword = params[:keyword]
        render "index"
    end

    private
    def manage_params
        params.require(:manage).permit(:name, :place, :number)
    end

end
