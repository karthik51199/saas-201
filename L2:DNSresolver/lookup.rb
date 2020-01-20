def get_command_line_argument
  # ARGV is an array that Ruby defines for us,
  # which contains all the arguments we passed to it
  # when invoking the script from the command line.
  # https://docs.ruby-lang.org/en/2.4.0/ARGF.html
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument

# File.readlines reads a file and returns an
# array of string, where each element is a line
# https://www.rubydoc.info/stdlib/core/IO:readlines
dns_raw = File.readlines("zone")

# ..
# ..
# FILL YOUR CODE HERE
# ..
# ..

def parse_dns(dns_raw)
  dns_records = {}
  dns_raw.each do |line|
    unless line[0] == "\n" or line[0] == "#"
      arr = line.split ","
      if arr[0].strip == "A"
        dns_records[arr[1].strip] = { :type => "A", :ip_address => arr[2].chomp.strip }
      else
        dns_records[arr[1].strip] = { :type => "CNAME", :alias => arr[2].chomp.strip }
      end
    end
  end
  return dns_records
end

def resolve(dns_records, lookup_chain, domain)
  lookup_result = dns_records[domain]

  if lookup_result == nil
    lookup_chain = ["Error: record not found for #{domain}"]
  elsif lookup_result[:type] == "A"
    lookup_chain.push lookup_result[:ip_address]
  else
    lookup_chain.push lookup_result[:alias]
    lookup_chain = resolve(dns_records, lookup_chain, lookup_result[:alias]) #here instead of lookup_result[:alias], we can also use lookup_chain[-1]
  end

  return lookup_chain
end

# To complete the assignment, implement `parse_dns` and `resolve`.
# Remember to implement them above this line since in Ruby
# you can invoke a function only after it is defined.
dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")
