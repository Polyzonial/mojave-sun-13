/atom/Initialize(mapload, ...)
	. = ..()
	if(uses_integrity)
		if(islist(subarmor))
			subarmor = getSubarmor(arglist(subarmor))
		else if(!subarmor)
			subarmor = getSubarmor()
		else if(!istype(subarmor, /datum/subarmor))
			stack_trace("Invalid type [subarmor.type] found in .subarmor during /atom Initialize()")
