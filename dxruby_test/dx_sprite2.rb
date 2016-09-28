require 'dxruby'

class MySprite1 < Sprite
  @@image = Image.new(100, 100, C_WHITE)

  def initialize
    super     #親クラスのinitializeを実行
    self.x = 0    #self : 自分自身の x に ０ を代入
    self.y = 0
    self.image = @@image
  end

  def update      #オーバーライドして使う
    self.x += 1
  end
end

class MySprite2 < Sprite
  @@image = Image.new(100, 100, C_WHITE)

  def initialize
    super
    self.x = 200
    self.y = 0
    self.image = @@image
  end

  def update
    self.y += 1
  end
end

s = [MySprite1.new, MySprite2.new]

Window.loop do     #60fps
#  s.update
#  s.draw

  Sprite.update(s)
  Sprite.draw(s)
end
