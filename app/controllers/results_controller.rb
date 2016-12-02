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

# This code, along with the Javascript is meant to set the value of
# accessible to false upon page load however it is not currently
# working and we should probably move acessible to Prospect
  def update_accessible
    @result = Result.find(params[:result_id])
    @result.update_attribute(accessible: true)
    respond_with @result
  end

  private
  def result_params
      params.require(:result).permit(:disposition, :accessible, :event, :location, :prospect_id, :user_id)
  end
end
