require 'benchmark'
require 'net/http'
require 'uri'

time = Benchmark.measure do
`curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip`
end

total = 11/time.real*8
p total
#req = Net::HTTP::Put.new('/properties/1', 
#req.body = 
#response = Net::HTTP.new('http://openworks-status-api.herokuapp.com',80).start { |http| http.request(##req) }
#write to open works status api
`curl --request PATCH --data '{"data": {"type":"properties", "id": "1", "attributes": {"value": #{total} }}}' --header "Content-Type: application/vnd.api+json" --header "Authorization: Token openworksauthtoken" http://openworks-status-api.herokuapp.com/properties/1.json`

