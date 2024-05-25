# == Schema Information
#
# Table name: productos
#
#  id         :integer          not null, primary key
#  nombre     :string
#  categoria  :string
#  precio     :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Producto < ApplicationRecord
  validates :nombre, presence: true
  validates :categoria, presence: true
  validates :precio, presence: true
  validates :precio, numericality: { greater_than: 0 }

  def self.ransackable_attributes(_auth_object = nil)
    %w[nombre categoria precio]
  end

  enum categoria: { tecnologia: 'tecnologia', hogar: 'hogar', deporte: 'deporte', moda: 'moda', otros: 'otros' }

  def self.generar(n)
    n.times do
      Producto.create(nombre: Faker::Commerce.product_name, categoria: Producto.categoria.keys.sample, precio: Faker::Commerce.price)
    end
  end
end
