/datum/antagonist/ghoul
	name = "Ghoul"
	roundend_category = "ghouls"
	job_rank = ROLE_GHOUL
	special_role = SPECIAL_ROLE_GHOUL
	antag_hud_name = "hudchangeling"
	antag_hud_type = ANTAG_HUD_GHOUL
	wiki_page_name = "Ghoul Aspirant"
	var/lore = 0
	var/grail = 0
	var/heart = 0
	var/moth = 0
	var/forge = 0
	var/knock = 0
	var/histories = 0
	var/edge = 0
	var/mainaspect

/datum/antagonist/ghoul/on_gain()
	. = ..()
	to_chat(owner,"you realise you are the raven")
	var/obj/effect/proc_holder/spell/ghoul/work/W = new
	var/obj/effect/proc_holder/spell/ghoul/dream/D = new
	var/obj/effect/proc_holder/spell/ghoul/study/S = new
	owner.AddSpell(W)
	owner.AddSpell(D)
	owner.AddSpell(S)

/datum/mind/proc/make_ghoul()
	if(!has_antag_datum(/datum/antagonist/ghoul))
		add_antag_datum(/datum/antagonist/ghoul)
