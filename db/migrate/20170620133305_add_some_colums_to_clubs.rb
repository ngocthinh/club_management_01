class AddSomeColumsToClubs < ActiveRecord::Migration[5.0]
  def change
    add_column :clubs, :member, :integer
    add_column :clubs, :goal, :text
    add_column :clubs, :local_club, :string
    add_column :clubs, :content_club, :text
    add_column :clubs, :time_club, :string
    add_column :clubs, :rules_club, :text
    add_column :clubs, :rule_finance, :text
    add_column :clubs, :time_join, :string
    add_column :clubs, :punishment, :text
    add_column :clubs, :plan, :text
  end
end
