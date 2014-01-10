#!/usr/bin/env ruby
require "rubygems" # ruby1.9 doesn't "require" it though
require "thor"

class Jekyll_Tool < Thor
  desc "new_post name, category", "Create a new Post"
  def new_post(name, category)
    puts "Your are going to add '#{name}' in '#{category}'"
  end
end

Jekyll_Tool.start
