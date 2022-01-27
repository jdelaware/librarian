class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.text :description
      t.string :topic
      t.string :status

      t.timestamps
    end
  end
end
