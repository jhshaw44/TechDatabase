class CreateTechdbs < ActiveRecord::Migration
  def change
    create_table :techdbs do |t|

      t.timestamps
    end
  end
end
