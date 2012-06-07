Meta.create(:keywords => "Deep House Music, Funk, Clubs", :description => "Dj Paul Sutcliffe, 8 years making the crowd jump all night.")
Gig.transaction do
  (1..30).each do |i|
    Gig.create(:link => "http://www.facebook.com/djpaulsutcliffe", :date => "2012-06-30", :place => "Miraflores, Lima.", :name => "Bizarro #{i}")
  end
end