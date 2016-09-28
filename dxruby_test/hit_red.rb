require 'dxruby'

image1 = Image.new(100, 100, C_WHITE)
image2 = Image.new(100, 100, C_RED)

s = Array.new(10) do
  Sprite.new(rand * 600, rand * 440, image1)
end

m = Sprite.new(0, 0, image1)

Window.loop do
  m.x, m.y = Input.mouse_pos_x, Input.mouse_pos_y

  m.check(s).each do |t|
    t.image = image2
  end

  Sprite.draw(s)
  m.draw
end
