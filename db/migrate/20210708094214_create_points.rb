class CreatePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :points do |t|
      t.text    :address,     null: false
      t.text    :point_comment
      
      t.timestamps
    end
  end
end
