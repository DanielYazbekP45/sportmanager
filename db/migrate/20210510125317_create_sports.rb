class CreateSports < ActiveRecord::Migration[6.1]
  def change
    create_table :sports do |t|
      t.string :title
      t.string :string

      t.timestamps
    end
  end
end
