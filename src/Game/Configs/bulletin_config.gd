class_name BulletinConfig

enum Keys {
	InteractionPrompt,
	CraftingMenu
}

const BULLETIN_PATH := {
	Keys.InteractionPrompt : "res://bulletins/interaction_prompt.tscn",
	Keys.CraftingMenu : "res://bulletins/player_menus/crafting_menu.tscn"
}

# dont need to create a instance to use
static func get_bulletin(key : Keys) -> Bulletin:
	return load(BULLETIN_PATH.get(key)).instantiate()
