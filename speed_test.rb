require 'benchmark'

time = Benchmark.measure do
`curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip`
end

total = 11*1024/time.real

#write to open works status api
#curl -H "Content-Type: application/json" -H "Authorization: Token openworksauthtoken" https://openworks-status-api.herokuapp.com/things
