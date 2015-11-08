class CreateGeneralActivities < ActiveRecord::Migration
  def change
    create_table :general_activities do |t|

      t.timestamps
    end
  end
end
