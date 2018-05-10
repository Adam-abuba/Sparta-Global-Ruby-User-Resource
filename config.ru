require "sinatra"
require "sinatra/reloader" if development?
require_relative "/Users/tech-a02/Documents/engineering-9/Homework/RubyPostResouce/Sparta-Global-Ruby-User-Resource/controllers/post_controllers.rb"

run PostsController
