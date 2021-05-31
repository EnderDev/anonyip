require_relative "check_geoip.rb"

class Converter
    def initialize()

    end

    def anonymise(ip)
        @ip = ip
        ip = ip.split(/\./)
        
        anonymised = [ip[0], ip[1], 0, 0]

        anonymised.join(".")
    end
end

converter = Converter.new()
checker = Checker.new()

@ip = "82.10.164.50"

puts "Checking GeoIP for #{@ip}"

checker.check(@ip);

puts "Anonymising #{@ip}"

@out = converter.anonymise(@ip);

puts "Result #{@out}"

puts "Checking GeoIP for #{@out}"

checker.check(@out);