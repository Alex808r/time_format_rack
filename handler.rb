# gem  install rack
# curl --url "http://localhost:8080/" -i
require 'rack'

app = Proc.new do |env|
  [
    200,
    {'Content-Type' => 'text/plain'},
    ["Welcome aboard!\n"]
  ]
end

Rack::Handler::WEBrick.run app

# time-format-rack git:(task-1) ✗ ruby handler.rb
# [2021-11-29 11:44:15] INFO  WEBrick 1.6.0
# [2021-11-29 11:44:15] INFO  ruby 2.7.2 (2020-10-01) [x86_64-linux]
# [2021-11-29 11:44:15] INFO  WEBrick::HTTPServer#start: pid=21387 port=8080
# 127.0.0.1 - - [29/Nov/2021:11:44:19 MSK] "GET / HTTP/1.1" 200 16
# - -> /
# 127.0.0.1 - - [29/Nov/2021:11:45:35 MSK] "GET / HTTP/1.1" 200 16
# - -> /
# 127.0.0.1 - - [29/Nov/2021:11:45:38 MSK] "GET / HTTP/1.1" 200 16
# - -> /