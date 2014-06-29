class CreateTimezones < ActiveRecord::Migration
  def change
    create_table :timezones do |t|
      t.string :title

      t.timestamps
    end
  end
end
