require 'dxruby'

img = Image.new(100,100,C_WHITE)
s1 = Sprite.new(100,100,img)
#s2 = Sprite.new(200,0,img)

Window.loop do
#  s1.x += 1
  s1.angle += 1
  s1.alpha = s1.alpha == 0 ? 255 : s1.alpha - 5
  s1.draw

#  s2.y += 1
#  s2.draw
end
