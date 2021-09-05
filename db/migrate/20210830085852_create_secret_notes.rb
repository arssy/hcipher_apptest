class CreateSecretNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :secret_notes do |t|
      t.string :title
      t.string :note

      t.timestamps
    end
  end
end
