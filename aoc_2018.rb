#!/usr/bin/env ruby

raise 'I need a day as a DAY= environment variable' unless ENV['DAY']

require "./day_#{ENV['DAY']}/solution"

klass = Object.const_get("Day#{ENV['DAY']}::Solution").new
raise 'I need a part as a PART= environment variable' unless ENV['PART']

klass.send("part_#{ENV['PART']}")
