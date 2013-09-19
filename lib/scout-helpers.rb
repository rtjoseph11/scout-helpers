require "scout-helpers/version"

module ScoutHelpers
  # returns current file for a category
  #
  def self.get_current_file(path, category)
    path = path.slice(0, path.size - 1) if path.end_with?('/')
    File.new(
      "#{path}/#{category}/" +
      Dir.entries("#{path}/#{category}")
        .select {|item| item.match(category)}
        .reject {|item| item.match("#{category}_current")}
        .sort
        .last
    )
  end
  
  # returns last complete file for a category
  #
  def self.get_last_file(path, category)
    path = path.slice(0, path.size - 1) if path.end_with?('/')
    File.new(
      "#{path}/#{category}/" +
      Dir.entries("#{path}/#{category}")
        .select {|item| item.match(category)}
        .reject {|item| item.match("#{category}_current")}
        .sort
        .last(2)
        .first
    )
end
