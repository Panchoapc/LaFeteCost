class Recetum < ApplicationRecord
    belongs_to :productos, class_name: "Producto", foreign_key: "Producto_id"
    belongs_to :procesos, class_name: "Proceso", foreign_key: "Proceso_id"
end
