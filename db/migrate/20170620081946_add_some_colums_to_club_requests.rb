class AddSomeColumsToClubRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :club_requests, :member, :integer
    add_column :club_requests, :goal, :text
    add_column :club_requests, :local_club, :string
    add_column :club_requests, :content_club, :text
    add_column :club_requests, :time_club, :string
    add_column :club_requests, :rules_club, :text
    add_column :club_requests, :rule_finance, :text
    add_column :club_requests, :time_join, :integer
    add_column :club_requests, :punishment, :text
    add_column :club_requests, :plan, :text
  end
end
