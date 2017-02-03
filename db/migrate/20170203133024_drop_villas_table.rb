class DropVillasTable < ActiveRecord::Migration[5.0]
  def change
    execute "DROP TABLE #{:villas} CASCADE"
  end
end
