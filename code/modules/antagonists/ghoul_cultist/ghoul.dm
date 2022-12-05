/datum/antagonist/ghoul
	name = "Ghoul"
	roundend_category = "ghouls"
	job_rank = ROLE_GHOUL
	special_role = SPECIAL_ROLE_GHOUL
	antag_hud_name = "hudchangeling"
	antag_hud_type = ANTAG_HUD_GHOUL
	var/lore = 0
	var/grail = 0
	var/heart = 0
	var/moth = 0
	var/forge = 0
	var/knock = 0
	var/histories = 0
	var/edge = 0
	var/mainaspect

/datum/antagonist/ghoul/apply_innate_effects(mob/living/mob_override)//I hate coding
	. = ..()
	var/mob/living/L = ..()
	to_chat(L,"you realise you are the raven")
	var/obj/effect/proc_holder/spell/ghoul/work/W = new /obj/effect/proc_holder/spell/ghoul/work
	var/obj/effect/proc_holder/spell/ghoul/dream/D = new /obj/effect/proc_holder/spell/ghoul/dream
	var/obj/effect/proc_holder/spell/ghoul/study/S = new /obj/effect/proc_holder/spell/ghoul/study
	L.mind.AddSpell(W)
	L.mind.AddSpell(D)
	L.mind.AddSpell(S)

/datum/mind/proc/make_ghoul()
	if(!has_antag_datum(/datum/antagonist/ghoul))
		add_antag_datum(/datum/antagonist/ghoul)

/datum/antagonist/ghoul/add_owner_to_gamemode()
	SSticker.mode.ghoul_cult += owner

/datum/antagonist/ghoul/remove_owner_from_gamemode()
	SSticker.mode.ghoul_cult -= owner
