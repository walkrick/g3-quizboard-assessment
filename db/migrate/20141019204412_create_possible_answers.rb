class CreatePossibleAnswers < ActiveRecord::Migration
  def change
    create_table :possible_answers do |t|
      t.belongs_to :question, index: true
      t.text :description
      t.boolean :correct

      t.timestamps
    end
  end
end
