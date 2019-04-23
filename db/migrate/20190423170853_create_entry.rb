class CreateEntry < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.decimal :amount
      t.datetime :entry_date
      t.string :title
    end
  end
end
