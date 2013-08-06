class AddTierIdAndDailyLimitToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tier_id, :integer
    add_column :users, :daily_limit, :integer
  end
end
