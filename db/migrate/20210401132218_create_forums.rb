class CreateForums < ActiveRecord::Migration[6.1]
  def change
    create_table :forums do |t|
      t.string :team
      t.text :about
   
      t.timestamps
    end
  end
end
