require 'pry'
module Enumerable

  def my_each(&block)
    i = 0
    while i < self.size
      yield self[i]
      i += 1
    end
    self
  end

  def my_map(&block)
    return self unless block_given?
    response = []
    self.my_each do |e|
      response << yield(e)
    end
    response
  end
end
