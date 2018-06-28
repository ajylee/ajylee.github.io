#!/usr/bin/env ruby

require 'pathname'

index = Pathname('index.md')
index_content = Pathname('index-content.md')


articles = Pathname('.')
  .children
  .select { |x|
  x.to_s.match(/.*\.md/) and not [index_content, index].member?(x)
}
  .sort 
  .map { |x|
  "- [#{x.to_s}](#{x.to_s})\n\n"
}
  .join("\n")

index.write((index_content.read + articles))
