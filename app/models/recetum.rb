class Recetum < ApplicationRecord
    belongs_to :procesos
    belongs_to :productos
end
