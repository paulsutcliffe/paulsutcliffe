class Gig < ActiveRecord::Base
  scope :upcoming, lambda {
    where("date between ? and ?", Date.today, Date.today.next_month.end_of_month)
  }
end
