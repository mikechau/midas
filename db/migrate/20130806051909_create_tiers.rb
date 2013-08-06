class CreateTiers < ActiveRecord::Migration

  def change
    create_table :tiers do |t|
      t.string :name
      t.integer :limit
    end
  end

end
