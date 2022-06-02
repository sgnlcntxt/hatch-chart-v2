class CreateBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :bugs do |t|
      t.string :name
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
