# frozen_string_literal: true

class CreateTopicLesson < ActiveRecord::Migration[8.0]
  def change
    create_table :topic_lessons do |t|
      t.references :topic, null: false, foreign_key: true

      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
