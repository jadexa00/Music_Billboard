class CreateBillboards < ActiveRecord::Migration[6.0]
  def change
    create_table :billboards do |t|

      t.timestamps
    end
  end
end
