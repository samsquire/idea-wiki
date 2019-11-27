#!/usr/bin/env ruby

require 'rgl/adjacency'
dg=RGL::DirectedAdjacencyGraph[]

STDIN.read.split("\n").each do |a|
	edges= a.split("\s")
	a = edges[0]
	b = edges[1]
	dg.add_edge(a, b)
end

require 'rgl/topsort'
require 'rgl/dot'

dg.topsort_iterator.each {|a| puts a }
dg.write_to_graphic_file
