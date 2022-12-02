/obj/effect/proc_holder/spell/ghoul
	name = "ghoul action" // Only rename this if the spell you're making is not abstract
	desc = "An action pertaining to ghouls"
	panel = "Spells"//What panel the proc holder needs to go on.
	density = FALSE
	opacity = FALSE
	base_cooldown = 2 MINUTES
	still_recharging_msg = "<span class='notice'>This action is still recharging.</span>"
	clothes_req = FALSE
	human_req = TRUE
	stat_allowed = CONSCIOUS
	cooldown_min = 2 MINUTES
	holy_area_cancast = FALSE
	action_icon = 'icons/mob/actions/actions.dmi'
	action_icon_state = "spell_default"
	action_background_icon_state = "bg_spell"

/obj/effect/proc_holder/spell/ghoul/work
	name = "Work" // Only rename this if the spell you're making is not abstract
	desc = "perform a great work"
	panel = "Spells"//What panel the proc holder needs to go on.
	density = FALSE
	opacity = FALSE

/obj/effect/proc_holder/spell/ghoul/dream
	name = "Dream" // Only rename this if the spell you're making is not abstract
	desc = "dream and enter the mansus"
	panel = "Spells"//What panel the proc holder needs to go on.
	density = FALSE
	opacity = FALSE
	stat_allowed = UNCONSCIOUS

/obj/effect/proc_holder/spell/ghoul/study
	name = "Study" // Only rename this if the spell you're making is not abstract
	desc = "study the world around you"
	panel = "Spells"//What panel the proc holder needs to go on.
	density = FALSE
	opacity = FALSE
