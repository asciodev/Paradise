/mob/camera/eye/shuttle_docker
	name = "Shuttle Docker Camera Eye"
	ai_detector_visible = FALSE
	simulated = FALSE
	var/list/placement_images = list()
	var/list/placed_images = list()

/mob/camera/eye/shuttle_docker/Initialize(mapload, name, origin, mob/living/user)
	..()
	setLoc(first_active_camera())

/mob/camera/eye/shuttle_docker/rename_camera(new_name)
	name = "Shuttle Docker Camera Eye ([new_name])"

/mob/camera/eye/shuttle_docker/update_visibility()
	return FALSE

/mob/camera/eye/shuttle_docker/setLoc(T)
	if(isspaceturf(get_turf(T)) || istype(get_area(T), /area/space) || istype(get_area(T), /area/shuttle))
		..()
		var/obj/machinery/computer/camera_advanced/shuttle_docker/console = origin
		console.checkLandingSpot()

/mob/camera/eye/shuttle_docker/update_remote_sight(mob/living/user)
	user.sight = SEE_TURFS
	
	..()
	return TRUE
