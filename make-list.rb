#!/usr/bin/env ruby

require 'pathname'

toc = Pathname('table-of-contents.md')

toc.write(
  Pathname('.').children.select {|x| x.to_s.match(/.*\.md/) and x != toc }.join("\n")
)
