class Animal
  attr_reader :name, :voice

  def initialize(name)
    @name = name
    @voice = '...'
  end

  def cry
    "#{self.name}: #{voice}"
  end
end

#  Dogクラス追加
class Dog < Animal
  def initialize(name)
    super
    @voice = "ワンワン！"
  end
end

#  Catクラス追加
class Cat < Animal
  def initialize(name)
    super
    @voice = "ニャー！"
  end
end

