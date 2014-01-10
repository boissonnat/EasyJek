#!/usr/bin/env ruby
require "rubygems" # ruby1.9 doesn't "require" it though
require "thor"
require "fileutils"

class Jekyll_Tool < Thor
  desc "new_post title, category", "Create a new Post"
  def new_post(title, category)
  	# Ensure we got a '_posts' folder before doing anything
  	if !File.exist?("_posts")
      abort("No '_posts' directory found ! Are you sure to be in an Jekyll directory ?")
    end

    # Create new category folder is any
    if !File.exist?("_posts/#{category}")
    	puts "You are going to create a new Category : #{category}"
    	FileUtils.mkdir_p("_posts/#{category}")
    end

    # Construct the file name following the Jekyll convention
    date = Time.now.strftime('%Y-%m-%d')
    filename = "_posts/#{category}/#{date}-#{title}.md"

    # Ensure the future file does not exist
	if File.exist?(filename)
      abort("#{filename} already exists!")
    end

    # Write the file
    puts "Creating new post: #{title} in #{category}"
    post_file = File.new(filename, "w")

	post_file.puts "---"
	post_file.puts "layout: post"
	post_file.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
	post_file.puts "tags:"
	post_file.puts "category: \"#{category.gsub(/&/,'&amp;')}\""
	post_file.puts "---"
    
    post_file.close
  end
end

Jekyll_Tool.start
