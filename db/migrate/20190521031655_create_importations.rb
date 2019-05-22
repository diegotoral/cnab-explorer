class CreateImportations < ActiveRecord::Migration[5.2]
  def change
    create_table :importations do |t|
      t.datetime :processed_at

      t.timestamps
    end
  end
end
