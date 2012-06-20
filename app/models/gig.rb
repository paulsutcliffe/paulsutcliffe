class Gig < ActiveRecord::Base
  scope :upcoming, lambda {
    where("date between ? and ?", Date.today, Date.today.next_month.beginning_of_month)
  }
end
