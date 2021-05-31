class Converter {
    public anonymise(ip) {
        ip = ip.split(/\./)
        
        const anonymised = [ip[0], ip[1], 0, 0]

        return anonymised.join(".")
    }
}

const converter = new Converter();

const ip = "82.10.164.50"

console.log(`Anonymising ${ip}`)

let out = converter.anonymise(ip);

console.log(`Result: ${out}`)