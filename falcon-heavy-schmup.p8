pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
function _init()
	fh_x = 64
	fh_y = 64
	fh_sprite=72
	fh_flip=false
	speedx = 2
	speedy = 2
	bullet_x =0
	bullet_y =-10
	bh_x=0
	bh_y=-25
end

function _update() 
	fh_controls()
	bullet_y = bullet_y -5
	bh_y = bh_y-2
end


function _draw()
	cls(0)
	draw_fh()
	spr(1,bullet_x,bullet_y)
	spr(9,bh_x,bh_y,2,2)
end

function draw_fh()
	spr(fh_sprite,fh_x,fh_y,2,2,fh_flip)
end

function fh_controls()
	fh_sprite=72

 if btn(0) and fh_x > 0 then
 	fh_sprite = 102
 	fh_flip=false
		fh_x = fh_x - speedx
	end
	if btn(1) and fh_x < 115 then
		fh_sprite = 102
 	fh_flip=true
		fh_x = fh_x + speedx
	end
	if btn(2) then
		fh_y = fh_y - speedy
	end
	if btn(3) then
		fh_y = fh_y + speedy
	end
	if btnp(5) then
		bullet_x = fh_x +3 
		bullet_y = fh_y - 4
		sfx(0)
	end
	if btnp(4) then
		bh_x = fh_x -1
		bh_y = fh_y - 16
		sfx(1)
	end
end
-->8
function draw_alva(x,y,flip)
	sspr(0,32,16,16,x,y,32,32,flip)
end
__gfx__
00000000000990000000000004444440044444400444444004444440000000000000000000000000000000000000000000000000000000000000000000000000
08800880009779000000000004744740044744700447447004474470000000000000000000000000000000000000000000000000000000000000000000000000
8ee8877809a77a900000000004444440044444400444444004444440000777000077700000000000000000000000000000000000000000000000000000000000
8eeeee789aa77aa90000000004444440044444400444444004444440007eee7007eee70000000000000000000000000000000000000000000000000000000000
8eeeeee89aa77aa90000000004444440044444400444444004444440007eee7007eee70000088800008880000000000000000000000000000000000000000000
08eeee809aa99aa9000000000444444004444440044444400444444007eeeee77eeeee70008eee8008ee28000000000000000000000000000000000000000000
008ee80009900990000000000444444004444440044444400444444007eeeee77eeeee7008e77ee88eeee2800000000000000000000000000000000000000000
00088000000000000000000000f00f0000f000f000f00f000f000f007eeeeeeeeeeeeee708e7eeeeeeeee2800000000000000000000000000000000000000000
007070000000000000000000000000000000000000000000000000007eeeeeeeeeeeeee708eeeeeeeeeee2800000000000000000000000000000000000000000
007770000000000000000000000000000444444000000000000000007eeeeeeeeeeeeee708e7eeeeeeeee2800000000000000000000000000000000000000000
0007000000000000000000000000000004744740000000000000000007eeeeeeeeeeee70008eeeeeeeee28000000000000000000000000000000000000000000
00000000000000000000000000000000044444400000000000000000007eeeeeeeeee7000008eeeeeee280000000000000000000000000000000000000000000
000000000000000000000000000000000444444000000000000000000007eeeeeeee700000008eeeee2800000000000000000000000000000000000000000000
0080800000000000000000000000000004444440000000000000000000007eeeeee70000000008eee28000000000000000000000000000000000000000000000
00888000000000001110000000000000044444400000000000000000000007eeee7000000000008e280000000000000000000000000000000000000000000000
00080000000000000011000000000000044444400000000000000000000000777700000000000008800000000000000000000000000000000000000000000000
0000000000000008880600000000000000000000eeeeeeeeeeeeee2eeeeeeeee8eeeeee28eeeeee7cccccccc0000000000000000000000000000000000000000
0000000007000089986000000000000000000000eeee8e8eeee7eeeeeee8eeeeeee7eeeeeee7e2eecccccccc0000000000000000000000000000000000000000
0000000087300098886000000000000000000000eeee888ee8eee2e8e2eee7e24444444444444444cccccccc0000000000000000000000000000000000000000
0000000087300004060000000000000000000000eeeee8eeeeeeeeeeeeeeeeee4444449444444449cccccccc0000000000000000000000000000000000000000
0000000088888558888888000000000000000000e2e2eeeeeee2ee7eee7eeeee4494444494444444cccccccc0000000000000000000000000000000000000000
0000000000888888888888000000000000000000e222eeeee7eeeeeeeeee8e7e4444444444444944cccccccc0000000000000000000000000000000000000000
0000000000000888888800000000000000000000ee2eeeeeee8eeeeeee2eeeee4444444944444444cccccccc0000000000000000000000000000000000000000
0000000000000000000000000000000000000000eeeeeeeeeeee2eeeeeeee8eecccccccccccccccccccccccc0000000000000000000000000000000000000000
00000000000000000000000000000000eeeeeeeeeeeeeeeeeeeeee7777eeeeee4444444444444444cccccccc0000000000000000000000000000000000000000
00000000000000000000000000000000eeee8e8ee8e8eeeeeeeeee7777ee8e8e9994999999949999cccccccc0000000000000000000000000000000000000000
00000000000000000000000000000000eeee888ee888eeeeeeeeee7777ee888e9949999999994999cccccccc0000000000000000000000000000000000000000
00000000000000000000000000000000eeeee8eeee8eeeeeeeeeee7777eee8ee9499999999999499000000000000000000000000000000000000000000000000
00000000000000000000000000000000e7e7eeeeeeee2e2eee2e2e7777eeeeee4444444444444444000000000000000000000000000000000000000000000000
00000000000000000000000000000000e777eeeeeeee222eee222e7777eeeeee9999499999499999000000000000000000000000000000000000000000000000
00000000000000000000000000000000ee7eeeeeeeeee2eeeee2ee7777eeeeee9999949994999999000000000000000000000000000000000000000000000000
00000000000000000000000000000000eeeeeeeeeeeeeeeeeeeeee7777eeeeee4444444444444444000077777770000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000006000000000000000700000000177771777177777117777777777777711777777777777771
00000000000000000000000000000000000000000000000000000077600000000000007770000000177777171777777117777777777777711777777777777771
00000000400000000000000040000000000000000000000000000778760000000000077877000000177777717777777117777111117777711777777777777771
00000444444400000000044444440000000000000000000000000717160000000000071717000000177777171777777117777177777777711777777777777771
00004444444440000000444444444000000000000000000000000777760000000000077777000000177771777177777117777111117777711777777777777771
00044ff4444f400000044ff4444f4000000000000000000000000077700000000000007770000000177777777777777117777777717777711777777777777771
40044ffff4ff400040044ffff4ff4000000000000000000000007077700600000007007770070000177777777777777117777111117777711777777777777771
0404f7cfff7c40000404f7cfff7c4000000000000000000000077778777760000077777877777000177777777777777117777777777777711777777777777771
0444f7cfff7c44040444f7cfff7c4404000000000000000000077077707760000077707770777000177777777777777117777111117777711777777777777771
00044fffaaff444000044fffaaff4440000000000000000000077071707760000077707170777000177777777777777117777177717777711777777777777771
000044ffaaf00000000044ffaaf00000000000000000000000077071707760000077707170777000177777777777777117777111117777711777777777777771
0000099eeee0000000000eedddd00000000000000000000000077071707760000077707170777000177777777777777117777177777777711777777777777771
00009999ee9000000000eeeedde00000000000000000000000077071707760000077707170777000177777777777777117777177777777711777777777777771
000ff999999f0000000ffeeeeeef0000000000000000000000077077707760000077707770777000177777777777777117777777777777711777777777777771
000009999999000000000eeeeeee0000000000000000000000075757575750000057575757575000117777777777771117777111117777711777777777777771
00000220220000000000022022000000000000000000000000055055505550000055505550555000117777777777771117777177717777711777777777777771
00000000000000000000000000000000000000000000000000000006000000000000000000000000111777777777711117777111117777711777777777777771
00000000000000000000000000000000000000000000000000000077600000000000000000000000111777777777711117777177717777711777777777777771
00000000400000000000000000000000000000000000000000000787760000000000000000000000111777777777711117777177717777711777777777777771
00000444444400000000000000000000000000000000000000000771760000000000000000000000111777777777711117777777777777711777777777777771
00004444444440000000000000000000000000000000000000000777760000000000000000000000111777777777711117777111117777711777777777777771
00044ff4444f40000000000000000000000000000000000000000077700000000000000000000000111177777777111117777177777777711777777777777771
40044ffff4ff40000000000000000000000000000000000000007077700600000000000000000000111177777777111117777177777777711777777777777771
0404f7cfff7c40000000000000000000000000000000000000077787777760000000000000000000111117777771111117777177777777711777777777777771
0444f7cfff7c44040000000000000000000000000000000000077077707760000000000000000000111117777771111117777111117777711777777777777771
00044fffaaff44400000000000000000000000000000000000077017707760000000000000000000111117777771111117777777777777711777777777777771
000044ffaaf000000000000000000000000000000000000000077017707760000000000000000000111111777711111117777111117777711777711888877771
00000eedddd000000000000000000000000000000000000000077017707760000000000000000000111111777711111117777177777777711777711777777771
0000eeeedde000000000000000000000000000000000000000077017707760000000000000000000111111177111111117777111117777711777788888877771
000ffeeeeeef00000000000000000000000000000000000000077077707760000000000000000000111111177111111117777177777777711777777777777771
00000eeeeeee00000000000000000000000000000000000000057775777570000000000000000000111111111111111117777111117777711777788888877771
00000220220000000000000000000000000000000000000000055055505550000000000000000000111111111111111117777777777777711777777777777771
00000000000000000000888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000088888888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000888888888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000008888888888888888888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000088888888888888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000888888888888885588888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008888885588888885588888888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008888885588888888888888888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888888888888888888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888888888888888888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888888888888888888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000888888888888888888888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000888888888888888888888888558888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000888888885588888888888888558888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000888888885588888855888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000888888888888888855888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000888888888888888888888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000888888888888888888888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000888888888888888888888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888888888888888888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888888888888888888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888888888885588888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008888855888885588888888855888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008888855888888888888888855888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000888888888888888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000088888888888888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000008888888888888888888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000888888888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000088888888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000888888888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
3434343434343434343434343434343400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3434343434343434343434343434343400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3434343434343434343434343434343400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3434343434343434343434343434343400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3434343434343434343434343434343400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3434343434343434343434343434343400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3434343434343434343434343434343400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3434343434343434343434343434343400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3434343434343434343434343434343400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
383839383838393838393838393839381c1c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a001c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100003c7503a75037750337502f7502c7502875024750217501f7501d7501a7501775014750117500e7500675004750087500b7500b75009750057500275000750057000b7000b7000b7000b7000b7000a700
00020000006500265005650096500e6501065013650176501b6501e650216502465026650296502b6502e6502e6502e6502c65028650246501e65018650146500b65004650006503770037700377003770037700
00010000397503775034750317502f7502b7502975024750207501f7500000000000000003470032700307002e7002d7002b7003655034550305502e5502a5502855025550225501f5501c5501c5502c50000000
