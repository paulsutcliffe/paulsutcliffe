class HomeController < ApplicationController
  def index
    @slides = Slide.all
    @gigs = Gig.order(:date).upcoming.paginate(:page => params[:page], :per_page => 8)
    @scwidgets = Scwidget.all
  end

end
