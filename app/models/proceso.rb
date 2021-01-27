class Proceso < ApplicationRecord
    belongs_to :Maquina
    has_many :recetum
end
