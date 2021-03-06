class CreateBenefits < ActiveRecord::Migration[5.2]
  def change
    create_table :benefits do |t|
      t.string :name
      t.float :amount
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
