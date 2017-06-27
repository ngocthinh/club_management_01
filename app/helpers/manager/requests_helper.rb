module Manager::RequestsHelper
  def view_sidebar_club organization
    raw "#{organization.name}
      <span class='label label-primary label-indicator
        animation-floating'>
        #{organization.club_requests.pending.size}
      </span>"
  end

  def view_side_bar_memeber organization
    raw "#{organization.name}
      <span class='label label-primary label-indicator animation-floating'>
        #{organization.user_organizations.pending.size}
      </span>"
  end
end
