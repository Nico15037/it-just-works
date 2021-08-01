/// @desc

hSPEEd = 0
vSPEEd = 0

pLATFORMEr_mODe = false
//gRAVITy = .3

I_FEEL_LIKE_AN_ASTRONAUT_IN_THE_OCEAN_process_collisions = function()
{if		( place_meeting( x + hSPEEd, y, pig_pSolid ) )
{while	(! place_meeting( x + sign( hSPEEd ), y, pig_pSolid ) )
{x += sign( hSPEEd )
;}
hSPEEd = 0
;}

x += hSPEEd
;
	
if	( place_meeting( x, y + vSPEEd, pig_pSolid ) )
{while	( !place_meeting( x, y + sign( vSPEEd ), pig_pSolid ) )
{y += sign(vSPEEd)
;}
vSPEEd = 0
;}

y += vSPEEd
;}

NOW_IM_JUST_SOMEBODY_THAT_YOU_USED_TO_KNOW_handle_inputs = function()
{kRIGHt = keyboard_check( ord( "D" ) )
;
kLEFt = keyboard_check( ord( "A" ) )
;
kUp = keyboard_check( ord( "W" ) )
;
kDOWn = keyboard_check( ord( "S" ) )
;

kANYDIr = kRIGHt || kLEFt || kUp || kDOWn
;

mOVEx = kRIGHt - kLEFt
mOVEy = kDOWn - kUp


kDODGe = keyboard_check_pressed( vk_space )
;}


bASe_sPd = 7
tHRUSt = 3

dECc = 1

YOU_KNOW_THE_RULES_AND_SO_DO_I_movement = function()
{if		(mOVEx != 0 || mOVEy != 0)
{dIr = point_direction( 0, 0, mOVEx, mOVEy )
;
hSPEEd += lengthdir_x( tHRUSt, dIr )
;
vSPEEd += lengthdir_y( tHRUSt, dIr )
;}else
{dIr = 0
;}


if	(mOVEx == 0)
	hSPEEd -= sign( hSPEEd ) * dECc
;
if	(mOVEy == 0)
	vSPEEd -= sign( vSPEEd ) * dECc
;

hSPEEd = clamp(hSPEEd, -bASe_sPd, bASe_sPd)
;
vSPEEd = clamp(vSPEEd, -bASe_sPd, bASe_sPd)
;


//hSPEEd = mOVEx * bASe_sPd
//vSPEEd = mOVEy * bASe_sPd


if	(abs( hSPEEd ) < dECc)
hSPEEd = 0
;if	(abs( vSPEEd ) < dECc)
vSPEEd = 0
;}


sHIELDTOGGLe = "false"
;

sHIELDTIMEr = room_speed*1
;