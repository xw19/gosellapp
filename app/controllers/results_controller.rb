class ResultsController < ApplicationController

  def create
    @result = Result.create(result_params)
    respond_to do |format|
      if @result.save
        format.html{redirect_to prospect_path(@result.prospect_id), notice: 'Result was successfully posted.'}
      else
        format.html {redirect_to prospect_path }
      end
    end
  end
  
  private
  def result_params
      params.require(:result).permit(:disposition, :accessible, :event, :location, :prospect_id, :user_id)
  end
end
