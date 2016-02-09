class AddTime1ToTimeExps < ActiveRecord::Migration
  def change
    add_column :time_exps, :start_time, :time
    add_column :time_exps, :end_time, :time
  end
end
