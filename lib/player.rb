class Player

  def initialize(name)
    @name = name
  end

  def pick(option)
    option.to_sym
  end

end