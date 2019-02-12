class TimelinesController < ApplicationController

  def index
    @timelines = Timeline.all
    @timeline = Timeline.new
  end

  def create
    @timeline = Timeline.new(timeline_params)
    if @timeline.save
      flash[:success] = "Timeline successfully created"
      redirect_to timelines_path
    else
      render "index"
    end
  end

  private

  def timeline_params
    params.require(:timeline).permit(:event)
  end
end
