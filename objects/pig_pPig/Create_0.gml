/// @desc

hSPEEd = 0
vSPEEd = 0

gRAVITy = .3

I_FEEL_LIKE_AN_AUSTRONAUT_IN_THE_OCEAN_process_collisions = function() {
	if (place_meeting(x + hSPEEd, y, pig_pSolid)) {
		while(!place_meeting(x + sign(hSPEEd), y, pig_pSolid)) {
			x += sign(hSPEEd)
		}
		hSPEEd = 0
	}
	
	x += hSPEEd
	
	if (place_meeting(x, y + vSPEEd, pig_pSolid)) {
		while(!place_meeting(x, y + sign(vSPEEd), pig_pSolid)) {
			y += sign(vSPEEd)
		}
		vSPEEd = 0
	}
	
	y += vSPEEd
}

sHIELDTOGGLe = "false"
;

sHIELDTIMEr = room_speed*1
;