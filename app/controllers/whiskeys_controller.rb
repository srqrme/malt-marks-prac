class WhiskeysController < ApplicationController

    def index
        @whiskeys = Whiskey.all        
    end 

    def new
        @whiskey = Whiskey.new
    end
end
