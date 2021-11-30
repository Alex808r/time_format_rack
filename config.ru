# frozen_string_literal: true

require_relative 'time_format'
require_relative 'app'

run App.new

# rackup
# curl --url "http://localhost:9292/time?format=year%2Cmonth%2Cday" -i
# /time?format=year%2Cmonth%2Cday

