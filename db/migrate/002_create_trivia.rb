class CreateTrivia < ActiveRecord::Migration
  def change
    create_table :trivia do |t|
      t.string :question 
      t.string :answer

      t.timestamps null: false
    end
  end
end
