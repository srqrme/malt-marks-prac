class WhiskeysController < ApplicationController

    def index
        @whiskeys = Whiskey.all        
    end 

    def new
        @whiskey = Whiskey.new
    end

    def show
        @whiskey = Whiskey.find_by(id: params[:id])
    end

    def create
        @whiskey = Whiskey.find_or_create_by(whiskey_params)
        if @whiskey.valid?
            @whiskey.save
            redirect_to @whiskey
        else
            render :new
        end
    end

    def edit
        @whiskey = Whiskey.find_by(id: params[:id])
    end

    def update
        @whiskey = Whiskey.find_by(id: params[:id])
            @whiskey.update(whiskey_params)
            redirect_to @whiskey
    end

    private

    def whiskey_params
        params.require(:whiskey).permit(:name, :distillery, :origin, :age, :category, :proof, :price)
    end
end
