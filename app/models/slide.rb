class Slide < ActiveRecord::Base
  
  has_attached_file :slide, :styles => { :min => ["120x450>", :jpg], :max => ["1440x450#", :jpg]  },
                            :url  => "/images/assets/slides/:id/:style/:basename.:extension",
                            :path => ":rails_root/public/images/assets/slides/:id/:style/:basename.:extension"
end
