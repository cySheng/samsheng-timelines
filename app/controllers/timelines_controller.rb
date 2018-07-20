class TimelinesController < ApplicationController

  def index
    @timelines = Timeline.all
  end

  def create
    @timeline = Timeline.new(timeline_params)
    if @timeline.save
      flash[:success] = "Timeline successfully created"
      redirect_to timelines_path
    else
      flash[:error] = "Error #{@timeline.errors.messages}"
      redirect_to new_timeline_path
    end
  end

  private

  def timeline_params
    params.require(:timeline).permit(:event)
  end
end
