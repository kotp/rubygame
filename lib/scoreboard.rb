require 'fileutils'
require 'yaml'

# Manage score file
class Scoreboard
  FLPATH = File.join(File.dirname('../'), 'score.yml')
  def initialize
    FileUtils.touch(FLPATH) unless File.exist?(FLPATH)
  end

  def check_file?
    return false unless File.exist?(FLPATH)
    return false unless File.readable?(FLPATH)
    return false unless File.writable?(FLPATH)
    true
  end

  def view
    File.readlines(FLPATH).each do |line|
      puts line
    end
  end

  def self.error_io
    puts 'Error I/O'
    exit
  end

  def add(name, tries, time)
    d = "#{name} #{tries} attempts in #{time} seconds"
    File.open(FLPATH, 'a') { |f| f.puts d }
  end

  def count
    File.foreach(FLPATH).count
  end

  def remove(line); end

  def rotation(time); end
end

# require_relative 'lib/scoreboard'
# file = Scoreboard.new
# file.check_file?
# file.count
# file.add('Wesley',2,65)
# file.view
