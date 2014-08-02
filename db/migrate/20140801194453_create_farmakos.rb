class CreateFarmakos < ActiveRecord::Migration
  def change
    create_table :farmakos do |t|
      t.string :gbonoma
      t.string :emporikhon
      t.date :hmer_egris
      t.date :telos_egri

      t.timestamps
    end
  end
end
