class Maquina < ApplicationRecord
    has_many :procesos
    has_many :recetum
end
