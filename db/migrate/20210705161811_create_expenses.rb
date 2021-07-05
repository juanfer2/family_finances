class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.references :project, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.float :price_total
      t.float :total_paid
      t.float :total_dept
      t.date :date_pay
      t.integer :status
      t.integer :number_quota
      t.integer :code
      t.boolean :scrapping

      t.timestamps
    end
  end
end
