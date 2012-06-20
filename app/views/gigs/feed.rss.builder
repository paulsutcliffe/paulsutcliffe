xml.rss :version=>"2.0" do
  xml.channel do
    xml.title "Paul Sutcliffe's Gigs"
    xml.link "http://localhost:3000"
    xml.description "Dj Paul Sutcliffe's Gigs"
    xml.language 'pt-br'
    @gigs.each do |gig|
      xml.item do
        xml.title gig.name
        xml.link gig.link
        xml.description gig.date.to_s + ' ' + gig.place
      end
    end
  end
end