class Randexp
  VERSION = "0.1.0"

  attr_accessor :sexp

  def initialize(source)
    @sexp = Randexp::Parser[source]
  end

  def reduce
    Reducer[@sexp.dup]
  end
end

require 'core_ext'
require 'randexp/parser'
require 'randexp/reducer'
require 'randgen/random'
require 'randgen/bizarro'
require 'dictionary'