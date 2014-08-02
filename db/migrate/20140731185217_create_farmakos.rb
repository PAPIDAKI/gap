class CreateFarmakos < ActiveRecord::Migration
  def change
    create_table :farmakos do |t|
      t.date :hmer_egris
      t.string :gbonma
      t.string :emporikon
      t.boolean :fprint
      t.boolean :common
      t.boolean :eimerosi
      t.boolean :amateuruse
      t.boolean :tag
      t.boolean :mixture
      t.string :edr_code_kat
      t.date :date_update
      t.string :kode
      t.integer :num_protok
      t.string :num_protok_otal
      t.string :tegris
      t.string :type_egris
      t.string :kat_number_egris
      t.integer :fys_katast
      t.integer :fys_kat
      t.boolean :group
      t.string :morghskeya
      t.float :bohthitike
      t.string :aposyrsh
      t.string :kod
      t.boolean :food
      t.string :stoxos
      t.integer :paraskeyas
      t.integer :antiprosop
      t.integer :contact_market
      t.integer :contact_point
      t.string :code_toxik
      t.string :rcode
      t.date :telos_egri

      t.timestamps
    end
  end
end
