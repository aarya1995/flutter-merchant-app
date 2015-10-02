class CreateOfferings < ActiveRecord::Migration
  def change
    create_table :offerings do |t|
      t.string :title
      t.string :venue
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
