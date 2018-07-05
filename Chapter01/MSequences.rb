module MSequences                   # Begin a new module
  def self.fromtoby(from, to, by)  # A singleton method of the module
    x = from
    while x <= to
      yield x
      x += by
    end
  end
end
