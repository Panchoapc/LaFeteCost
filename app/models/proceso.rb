class Proceso < ApplicationRecord
    belongs_to :Maquina
    belongs_to :recetum
end
