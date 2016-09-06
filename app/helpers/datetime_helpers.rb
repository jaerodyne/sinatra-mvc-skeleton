module DateFormatting
  def convert_to_time(time)
    time = time.to_time
    time.strftime("%B %d, %Y at %H:%M:%S pm.")
  end
end

helpers DateFormatting

# place in model ------------
  # include DateFormatting
  # Remember to create a migration!

  # validate :starts_at_is_valid_datetime
  # validate :ends_at_is_valid_datetime


  # def starts_at_is_valid_datetime
  #   errors.add(:starts_at, "must be YYYY-MM-DD hr:min:sec ex: 2016-03-30 12:30:15") if ((DateTime.parse(starts_at).to_formatted_s(:db) rescue ArgumentError) == ArgumentError)
  # end

  # def ends_at_is_valid_datetime
  #   errors.add(:ends_at, "must be YYYY-MM-DD hr:min:sec ex: 2016-03-30 12:30:15") if ((DateTime.parse(ends_at).to_formatted_s(:db) rescue ArgumentError) == ArgumentError)
  # end

  # def current_auction
  #   # Checks if the time now is after the time the auction ended
  #   Time.now.to_formatted_s(:db) < self.ends_at
  # end
 #  ------------