class AddCatchphraseToCharacters < ActiveRecord::Migration[5.1]

  def change
    add_column :models, :catchphrase, :string
  end
end
