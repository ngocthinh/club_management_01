module ClubsHelper
  def time_club_activity day_times
    days = day_times.split(",")
    @days_show = ""
    days.each do |day|
      case day
      when Club::DAY.include? day
        @days_show <<
      end
    end
  end
end
