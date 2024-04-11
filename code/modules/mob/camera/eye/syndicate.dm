/mob/camera/eye/syndicate
	name = "Syndicate Researcher Camera Eye"
	ai_detector_visible = FALSE

/mob/camera/eye/syndicate/Initialize(mapload, name, origin, user)
	..()
	setLoc(first_active_camera())

/mob/camera/eye/syndicate/rename_camera(new_name)
	name = "Syndicate Researcher Camera Eye ([new_name])"
	
/mob/camera/eye/syndicate/update_visibility()
	return 0
