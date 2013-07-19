class VisitorsController < ApplicationController

  def new
    flash[:notice] = 'Welcome!'
    flash[:alert] = 'PartnerTrack helps you find great local consultants and turn them into great partners.'
  end

end