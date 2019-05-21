class MarksController < ApplicationController

    def index
        if params[:whiskey_id]
            @marks = Whiskey.find(params[:whiskey_id]).marks
        else
            @marks = Mark.all
        end
    end

    def new
        if params[:whiskey_id] && !Whiskey.exists?(params[:whiskey_id])
            redirect_to whiskeys_path
        else
            @mark = Mark.new(:whiskey_id => params[:whiskey_id], :user_id => current_user.id)
        end 
    end

    private

    def mark_params
        params.require(:mark).permit(:score, :comments, :user_id, :whiskey_id)
    end

end
