class CreateMoons < ActiveRecord::Migration[6.1]
  def change
    create_table :moons do |t|
      t.string :name
      t.belongs_to :planet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
