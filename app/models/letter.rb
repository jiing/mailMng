class Letter < ActiveRecord::Base
	belongs_to :category
	belongs_to :user

	validates :category_id, presence: true
	validates :user_id, presence: true
	validates :received_time, presence: true

#select count(*), received_time from letters where received_time >= '2016-03-24 07:00' and received_time <= '2016-03-24 09:00'
#select strftime('%H',received_time) from letters
	t= Time.now()
     time_begin = Time.local(t.year, t.month, t.day, 15) 
     time_end = Time.local(t.year, t.month, t.day, 17)

scope :is_valid, lambda{
      where("strftime('%Y-%m-%d %H:%M:%S',received_time) >= ? AND strftime('%Y-%m-%d %H:%M:%S',received_time) <= ?" ,time_begin, time_end)
    }
end
