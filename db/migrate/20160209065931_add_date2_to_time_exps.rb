class AddDate2ToTimeExps < ActiveRecord::Migration
  def change
    add_column :time_exps, :date2, :date
  end
end
