json.extract! producto, :id, :CodProd, :CostoMatPrima, :Nombre, :Detalle, :created_at, :updated_at
json.url producto_url(producto, format: :json)
