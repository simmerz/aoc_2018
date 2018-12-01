#!/usr/bin/env ruby

day = ENV['DAY'] || 1
require "./day_#{day}/solution"
klass = Object.const_get("Day#{day}::Solution").new
part = ENV['PART'] || 1
klass.send("part_#{part}")
