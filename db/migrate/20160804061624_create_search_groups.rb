class CreateSearchGroups < ActiveRecord::Migration
  def change
    create_table :search_groups do |t|

      t.timestamps
    end
  end
end
