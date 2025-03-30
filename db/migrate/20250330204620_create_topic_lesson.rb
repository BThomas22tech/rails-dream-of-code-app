class CreateTopicLesson < ActiveRecord::Migration[8.0]
  def change
    create_table :topic_lessons do |t|
      t.references :topic
      t.references :lesson

      t.timestamps
    end
  end
end
