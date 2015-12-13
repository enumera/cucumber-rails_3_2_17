class CreateTellers < ActiveRecord::Migration
  def change
    create_table :tellers do |t|
      t.string :bank

      t.timestamps
    end
  end
end
