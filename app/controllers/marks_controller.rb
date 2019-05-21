class MarksController < ApplicationController

    def index
        if params[:whiskey_id]
            @marks = Whiskey.find(params[:whiskey_id]).marks
        else
            @marks = Mark.all
        end
    end


end
