class HomeController < ApplicationController
  def index
    @gigs = Gig.order("date").limit(6)
  end

end
