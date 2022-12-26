class CreateQusers < ActiveRecord::Migration[7.0]
  def change
    create_table :qusers do |t|

      t.timestamps
    end
  end
end
