class CreateGadgets < ActiveRecord::Migration
  def change
    create_table :gadgets do |t|
      t.integer     :user_id
      t.string      :name
      t.timestamps
    end
    add_index :gadgets, :user_id
  end
end
