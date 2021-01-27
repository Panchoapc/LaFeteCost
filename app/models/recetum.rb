class Recetum < ApplicationRecord
    has_and_belongs_to_many :procesos, class_name: "Proceso", foreign_key: "Proceso_id"
    belongs_to :productos, class_name: "Producto", foreign_key: "Producto_id"
end
