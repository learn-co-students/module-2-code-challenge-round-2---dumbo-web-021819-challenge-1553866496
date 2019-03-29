class AppearencesController < ApplicationController

  def index
    @appearences = Appearence.all
  end

  def new
    @appearence = Appearence.new
  end

  def create
    @appearence = Appearence.create(appearence_params)
    redirect_to episode_path(@appearence[:episode_id])
  end


  private

  def appearence_params
    params.require(:appearence).permit(:guest_id, :episode_id, :rating)
  end
end
