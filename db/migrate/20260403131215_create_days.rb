class CreateDays < ActiveRecord::Migration[8.1]
  def change
    create_table :days do |t|
      t.date :i_day

      t.timestamps
    end
  end
end
