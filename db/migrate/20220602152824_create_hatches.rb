class CreateHatches < ActiveRecord::Migration[6.1]
  def change
    create_table :hatches do |t|
      t.integer :bug_id
      t.integer :fishery_id
      t.string :minimum_size
      t.string :maximum_size
      t.integer :start_month
      t.integer :start_day
      t.integer :end_month
      t.integer :end_day

      t.timestamps
    end
  end
end
