class CreateFlies < ActiveRecord::Migration[6.1]
  def change
    create_table :flies do |t|
      t.string :name
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
