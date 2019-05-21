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
        elsif 
            @mark = Mark.find_by(user_id: current_user.id, wine_id: params[:wine_id])
            redirect_to whiskey_mark_path(@mark.whiskey_id, @mark)
        else
            @mark = Mark.new(:whiskey_id => params[:whiskey_id], :user_id => current_user.id)
        end 
    end

    def create
        if @mark = Mark.find_by(user_id: current_user.id, whiskey_id: params[:mark][:whiskey_id])
            redirect_to whiskey_mark_path(@mark.whiskey_id, @mark)
        else
            @mark = Mark.new(mark_params)
                if @mark.save
                    redirect_to whiskey_mark_path(@mark.whiskey, @mark)
                else
                    render :new
                end
        end        
    end
    

    private

    def mark_params
        params.require(:mark).permit(:score, :comments, :user_id, :whiskey_id)
    end

end
