class PomoclocksController < ApplicationController
  def new
  end

  def create
    @pomoclock = Pomoclock.new(pomoclock_params)
    @pomoclock.save
    redirect_to @pomoclock

  end
  def show
    @pomoclock = Pomoclock.find(params[:id])
  end
  def index
    @pomoclocks = Pomoclock.all
  end

  private
  def pomoclock_params
    params.require(:pomoclock).permit(:start_time, :finish_time)
  end

end
