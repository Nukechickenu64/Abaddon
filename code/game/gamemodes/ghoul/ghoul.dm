/datum/game_mode/ghoul
	name = "ghoul"
	config_tag = "ghoul"
	required_players = 4
	required_enemies = 1
	recommended_enemies = 1

/datum/game_mode/ghoul/announce()
	to_chat(world, "<B>The current game mode is - Ghoul!</B>")
	to_chat(world, "<B>There is a <font color='red'>GHOUL ASPIRANT</font> on the station. You can't let him achieve his objective!</B>")

/datum/game_mode
	/// A list of all minds currently in the cult
	var/list/datum/mind/ghoul_cult = list()

/datum/game_mode/proc/remove_ghoul(datum/mind/ghoul_mind)
	if(!(ghoul_mind in ghoul_cult))
		return
	else
		ghoul_mind.remove_antag_datum(/datum/antagonist/ghoul)

/datum/game_mode/proc/add_ghoul(datum/mind/ghoul_mind)
	if(!(ghoul_mind in ghoul_cult))
		ghoul_cult += ghoul_mind
	ghoul_mind.current.faction |= "ghoul_cult"
	ghoul_mind.special_role = SPECIAL_ROLE_GHOUL


