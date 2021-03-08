class State < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :Name
    end
  end
end
