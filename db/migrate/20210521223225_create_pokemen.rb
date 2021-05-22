class CreatePokemen < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemen do |t|
      
      t.string :name
      t.string :type1
      t.string :type2
      t.integer :total
      t.integer :Hp
      t.integer :Attack
      t.integer :Defense
      t.integer :Sp_Atk
      t.integer :Sp_Def
      t.integer :Speed	
      t.integer :Generation
      t.boolean :Legendary
      t.timestamps
    end
  end
end
