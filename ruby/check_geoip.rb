require 'maxmind/geoip2'

class Checker
    def initialize
        @reader = MaxMind::GeoIP2::Reader.new(
            database: './geoip.mmdb',
        )
    end

    def check(anonymised_ip)
        @anonymised_ip = anonymised_ip

        record = @reader.city(@anonymised_ip)

        puts "Country: #{record.country.name.to_json}"
        puts "City: #{record.city.name.to_json}"
    end
end