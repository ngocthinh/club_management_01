module ClubsHelper
  def get_day_view days
    days.join("-")
  end

  def check_date days, day
    days.include? day
  end
end
