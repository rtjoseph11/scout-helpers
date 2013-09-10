require "scout-helpers/version"

module ScoutHelpers
  # returns file for a category
  #
  def get_file(path, category)
    path = path.slice(0, path.size - 1) if path.end_with?('/')
    File.new(
      "#{path}/#{category}/" +
      Dir.entries("#{path}/#{category}")
        .select {|item| item.match(category)}
        .reject {|item| item.match("#{category}_current")}
        .sort
        .last)
  end
end
