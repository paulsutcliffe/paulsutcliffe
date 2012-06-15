class GigsController < InheritedResources::Base
  respond_to :rss, :only => :feed
  def create
      create!(:notice => "Gig saved successfully")
  end
  
  def feed
    @gigs = Gig.all
    respond_with @gigs
  end
end
