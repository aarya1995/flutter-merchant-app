class CreateBookableActivities < ActiveRecord::Migration
  def change
    create_table :bookable_activities do |t|

      t.timestamps
    end
  end
end
