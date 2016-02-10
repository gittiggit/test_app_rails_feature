class CreateTimeExps < ActiveRecord::Migration
  def change
    create_table :time_exps do |t|
      t.date :date1

      t.timestamps null: false
    end
  end
end
