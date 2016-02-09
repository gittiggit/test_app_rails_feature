class CreateTimeExps < ActiveRecord::Migration
  def change
    create_table :time_exps do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end
