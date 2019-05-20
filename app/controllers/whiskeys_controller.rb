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
            @whiskey.name = @whiskey.full_name
            @whiskey.save
            redirect_to @whiskey
        else
            render :new
        end
    end
end
