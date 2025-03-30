class CreateTopics < ActiveRecord::Migration[8.0]
  def change
    create_table :topics do |t|
      t.string :topic_name
      t.references :lesson
      t.references :course
      t.timestamps
    end
  end
end
