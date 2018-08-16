json.extract! sample, :id, :temperature, :humidity, :pressure, :eco2, :tvoc, :ccs_temperature, :lux, :full_light, :ir, :visible, :pm1, :pm25, :pm10, :dust_density, :created_at, :updated_at
json.url sample_url(sample, format: :json)
