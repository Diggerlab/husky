class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.string :email

      t.timestamps
    end
  end
end
