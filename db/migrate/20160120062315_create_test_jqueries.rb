class CreateTestJqueries < ActiveRecord::Migration
  def change
    create_table :test_jqueries do |t|
      t.string :name
      t.text :body
      t.decimal :salary
      t.datetime :date

      t.timestamps null: false
    end
  end
end
