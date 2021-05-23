class TvShowsController < ApplicationController
  before_action :set_tv_show, only: [:show]

  def show; end

  private

  def set_tv_show
    @tv_show = TvShow.find(params[:id])
  end
end
