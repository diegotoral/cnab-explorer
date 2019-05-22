class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :kind, default: 0
      t.integer :value_cents, default: 0
      t.string :cpf
      t.string :card_number
      t.datetime :appearance_at
      t.belongs_to :store, foreign_key: true

      t.timestamps
    end
  end
end
