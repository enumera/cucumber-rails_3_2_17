class CreateCashslots < ActiveRecord::Migration
  def change
    create_table :cashslots do |t|
      t.integer :serial_number
      t.integer :contents

      t.timestamps
    end
  end
end
