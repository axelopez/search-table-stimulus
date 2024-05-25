class CreateProductos < ActiveRecord::Migration[7.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :categoria
      t.decimal :precio

      t.timestamps
    end
  end
end
