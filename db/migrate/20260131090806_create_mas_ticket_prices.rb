class CreateMasTicketPrices < ActiveRecord::Migration[8.1]
  def change
    create_table :mas_ticket_prices do |t|
      t.integer :ticket_count, null: false
      t.integer :price, null: false
      t.timestamps
    end
    add_index :mas_ticket_prices, %i[ticket_count price], unique: true
  end
end
