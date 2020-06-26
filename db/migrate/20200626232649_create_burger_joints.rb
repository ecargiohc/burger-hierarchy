class CreateBurgerJoints < ActiveRecord::Migration[6.0]
  def change
    create_table :burger_joints do |t|
      t.string :name
      t.string :image_url
      t.string :slug

      t.timestamps
    end
  end
end
