class Proceso < ApplicationRecord
    belongs_to :maquinas
    has_many :recetum
end
