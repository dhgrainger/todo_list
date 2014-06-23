class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item, null: false
      t.boolean :done, null: false
      t.timestamps
    end
  end
end
