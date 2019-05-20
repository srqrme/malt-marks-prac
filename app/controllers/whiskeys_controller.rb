class WhiskeysController < ApplicationController

    def index
        @whiskeys = Whiskey.all        
    end 

    

end
