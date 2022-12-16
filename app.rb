require 'active_support/time'

def list_all_dates_going_back_seven_years
  desired_days = (365 * 7) + 30
  comma_separated_string = ""
  i = desired_days

  while i >= 0
    comma_separated_string += (Time.now - i.day).strftime("%Y/%m/%d").to_s + ", "
    i -= 1
  end

  comma_separated_string
end

p list_all_dates_going_back_seven_years