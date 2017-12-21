#!/usr/bin/env ruby

require 'nokogiri'
require 'restclient'

page = Nokogiri::HTML(RestClient.get('http://isabevigodadead.com/')) 
table = page.at('table')

table.search('tr').each do |tr|
  cells = tr.search('td').to_s
  cells.match(/>yes\.</i) ? puts('Yep.. he dead!') : puts('Nope.. he straight')
end

# derp
