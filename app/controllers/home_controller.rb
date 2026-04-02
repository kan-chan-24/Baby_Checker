class HomeController < ApplicationController
  def top
  end

  def input
  end

  def submit
    @birth_day = params[:birth_day]
    redirect_to("/result")
  end
end
