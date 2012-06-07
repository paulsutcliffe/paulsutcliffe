class Gig < ActiveRecord::Base
  auto_html_for :link do
    link :target => "_blank", :rel => "nofollow"
  end
end
