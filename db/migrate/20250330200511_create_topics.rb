# frozen_string_literal: true

class CreateTopics < ActiveRecord::Migration[8.0]
  def change
    create_table :topics do |t|
      t.string :name
      t.timestamps
    end
  end
end
