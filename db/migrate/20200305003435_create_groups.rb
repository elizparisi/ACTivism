class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :contact_info
      t.text :mission

      t.timestamps
    end
  end
end
