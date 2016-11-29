class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    drop_table :mc_questions
    create_table :questions do |t|
      t.text :body
      t.string :type
      t.references :manager_survey, foreign_key: true

      t.timestamps
    end
  end
end