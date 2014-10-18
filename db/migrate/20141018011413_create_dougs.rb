class CreateDougs < ActiveRecord::Migration
  def change
    create_table :dougs do |t|

      t.timestamps
    end
  end
end
