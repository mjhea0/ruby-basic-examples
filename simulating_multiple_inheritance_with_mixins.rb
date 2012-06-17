#!/usr/bin/ruby -w

require 'set' 

module Taggable
  attr_accessor :tags

  def taggable_setup
    @tags = Set.new
  end

  def add_tag(tag)
    @tags << tag
  end

  def remove_tag(tag)
    @tags.delete(tag)
  end
end

module Taggable2
  def initialize(a,b,c)
  end
end

class TaggableString < String
  include Taggable
  def initialize(*args)
    super
    taggable_setup
  end
end

s = TaggableString.new('this is a test.')
s.add_tag 'A'
s.add_tag 'B'
s.tags
