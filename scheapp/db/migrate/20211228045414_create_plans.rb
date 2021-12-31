class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :title
      t.string :startday
      t.string :finday
      t.string :allday
      t.string :detail

      t.timestamps
    end
  end
end
