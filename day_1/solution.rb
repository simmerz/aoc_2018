# frozen_string_literal: true

module Day1
  # Day 1
  class Solution
    def initialize
      @data = File.read(File.join(File.dirname(__FILE__), 'input.txt'))
                  .split("\n").map(&:to_i)
      @frequency = 0
      @seen_frequencies = []
    end

    def part_1
      puts @data.reduce(&:+)
    end

    def part_2
      run_changes
    end

    private

    def run_changes
      rerun = true
      @data.each do |change|
        rerun = change_frequency(change)
        break unless rerun
      end
      run_changes if rerun
    end

    def change_frequency(change)
      @frequency += change
      if @seen_frequencies.include?(@frequency)
        puts @frequency
        return false
      end

      @seen_frequencies << @frequency
      true
    end
  end
end
