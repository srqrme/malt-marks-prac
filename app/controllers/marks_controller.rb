class MarksController < ApplicationController

    def index
        if params[:whiskey_id]
            @marks = Whiskey.find(params[:whiskey_id]).marks
        else
            @marks = Mark.all
        end
    end

    private

    def mark_params
        params.require(:mark).permit(:score, :comments, :user_id, :whiskey_id)
    end

end
