#!/usr/bin/ruby -w

RGB_COLORS = [:red, :green, :blue]        # => [:red, :green, :blue]
RGB_COLORS << :purple                     # => [:red, :green, :blue, :purple]

RGB_COLORS = [:red, :green, :blue]
# warning: already initialized constant RGB_GOLORS
# RGB_COLORS                              # => [:red, :green, :blue]

RGB_COLORS.freeze
RGB_COLORS << :purple
# TypeError: can't modify frozen array>>
