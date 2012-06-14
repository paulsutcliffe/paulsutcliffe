class HomeController < ApplicationController
  def index
    @slides = Slide.all
    @gigs = Gig.order(:date).paginate(:page => params[:page], :per_page => 6)
    @scwidgets = Scwidget.all
  end

end
