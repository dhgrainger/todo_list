class AddTimelineToModel < ActiveRecord::Migration
  def up
    add_column :items, :timeline, :integer
  end
  def down
    remove_column :items, :timeline
  end
end
