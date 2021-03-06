class BillboardsController < ApplicationController
    before_action :set_billboard, only: [:show, :edit, :update, ::destroy]

    def index
        @Billboards = Billboard.all
    end

    def show 
    end

    def new
        @Billboards = Billboard.new
    end

    def create
        @billboard = Billboard.new(billboard_params)
        if @billboard.save
            redirect_to billboards_path
        else
            render.new
        end
    end

    def edit 
    end

    def update
        if @billboard.update(billboard_params)
            redirect_to @billboard
        else 
            render :edit
        end
        
        def detroy
            @billboard.destroy
            redirect_to billboards_path
        end

        private
        def set_billboard
            @billboard = Billboard.find(params[:id])
        end

        def billboard_params
            params.require(:billboard.permit(:top_100_us, :top_100_eu, :top_50_eu))


    end


end
