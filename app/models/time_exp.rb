class TimeExp < ActiveRecord::Base
 validates :date1, presence: true
 validates :date2, presence: true
 validates :start_time, presence: true
 validates :end_time, presence: true
 validate :selected_date_cannot_be_in_the_past, :compare_selected_time

 def compare_selected_time
   if start_time.present? && end_time.present? && start_time >= end_time
     errors.add(:end_time, "must be greater than start time")
   end
 end

 def selected_date_cannot_be_in_the_past
   # todate = Date.today
   # binding.pry
   # if date1.present? && date1 <  Date.today
   if date1.present? && date1.past?
     errors.add(:date1, "Can't be in the past")
   end
 end
end
