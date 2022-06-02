class CreateFisheries < ActiveRecord::Migration[6.1]
  def change
    create_table :fisheries do |t|
      t.string :name
      t.string :photo
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
