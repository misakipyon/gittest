require 'dxruby'

img = Image.load('data.png')
#image = baseimg.slice(0,0,20,20)
x = 0
y = 0

font = Font.new(32)

Window.loop do
#  x = x + Input.x
#  y = y + Input.y
#  x = Input.mouse_pos_x
#  y = Input.mouse_pos_y

  Window.draw(x,y,img)
  Window.draw_font(100,100,"魔女っ娘　おさるさん",font)
  if Input.key_push?(K_ESCAPE) #trueかfalseの場合は？をつける
    break
  end
end
