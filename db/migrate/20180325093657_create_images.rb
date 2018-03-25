class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :avatar
      t.references :user

      t.timestamps
    end
  end
end
