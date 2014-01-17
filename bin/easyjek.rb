#!/usr/bin/env ruby
require "rubygems" # ruby1.9 doesn't "require" it though
require "thor"
require "fileutils"

module Easyjek

  class Posts < Thor

    desc 'new_post <title>', 'Create a new Post'
    option :category, :aliases => '-c', :desc => 'Add the post in a specified category'
    def new_post(title)

      # Ensure we got a '_posts' folder before doing anything
      if !File.exist?("_posts")
        abort("No '_posts' directory found ! Are you sure to be in an Jekyll directory ?")
      end

      # Start the filename creation
      filename = '_posts/'

      if options[:category]
        # We are dealing with category
        # Create new category folder if any
        if !File.exist?("_posts/#{options[:category]}")
          puts "You are going to create a new Category : #{options[:category]}"
          FileUtils.mkdir_p("_posts/#{options[:category]}")
        end
        # Update the filename
        filename += "#{options[:category]}/"
      end

      # Add the date and the extension to the filename
      date = Time.now.strftime('%Y-%m-%d')
      filename += "/#{date}-#{title}.md"

      # Ensure the future file does not exist
      if File.exist?(filename)
        abort("#{filename} already exists!")
      end

      # Write the file
      if options[:category]
        puts "Creating new post: #{title} in #{options[:category]}"
      else
        puts "Creating new post: #{title}"
      end

      post_file = File.new(filename, "w")

      post_file.puts "---"
      post_file.puts "layout: post"
      post_file.puts "title: \"#{title.gsub(/&/, '&amp;')}\""
      post_file.puts "tags:"
      post_file.puts "category: \"#{options[:category]}\""
      post_file.puts "---"

      post_file.close

    end
  end
  Posts.start
end

