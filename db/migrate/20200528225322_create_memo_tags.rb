class CreateMemoTags < ActiveRecord::Migration[5.2]
  def change
    create_table :memo_tags do |t|
      t.references :memo, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
