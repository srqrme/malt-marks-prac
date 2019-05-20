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
end
