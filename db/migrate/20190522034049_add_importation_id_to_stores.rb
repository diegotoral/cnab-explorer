class AddImportationIdToStores < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :stores, :importations, foreign_key: true
  end
end
