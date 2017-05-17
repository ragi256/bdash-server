class CreateQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :queries do |t|
      t.string :title, null: false, default: ''
      t.text :body, null: false, default: ''
      t.text :charts, null: false, array: true, default: []
      t.text :result, null: false, default: ''

      t.timestamp
    end
  end
end
