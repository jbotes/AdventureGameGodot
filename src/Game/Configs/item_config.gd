class_name ItemConfig

enum Keys {
	#Pickupables
	Stick,
	Stone,
	Plant,
	Mushroom,
	Fruit,
	Log,
	Coal,
	Flintstone,
	RawMeat,
	CookedMeat,
	
	#craftables
	Axe,
	Pickaxe,
	Campfire,
	Mutlitool,
	Rope,
	Tinderbox,
	Torch,
	Tent,
	Raft
	
}

const CRAFTABLE_ITEM_KEYS : Array[Keys] = [
		Keys.Axe,
	#	Keys.Pickaxe,
	#	Keys.Campfire,
	#	Keys.Mutlitool,
		Keys.Rope
	#	Keys.Tinderbox,
	#	Keys.Torch,
	#	Keys.Tent,
	#	Keys.Raft
]

const ITEM_RESOURCE_PATHS := {
	Keys.Stick : "res://Resources/item_resources/stick_resource.tres",
	Keys.Stone : "res://Resources/item_resources/stone_resource.tres",
	Keys.Plant : "res://Resources/item_resources/plant_resource.tres",
	Keys.Axe : "res://Resources/item_resources/axe_item_resource.tres",
	Keys.Pickaxe : "res://Resources/item_resources/pickaxe_item_resource.tres",
	Keys.Rope : "res://Resources/item_resources/rope_resource.tres",
	Keys.Log : "res://Resources/item_resources/log_item_resource.tres",
	Keys.Mushroom : "res://Resources/item_resources/mushroom_item_resource.tres",
	Keys.Coal : "res://Resources/item_resources/coal_item_resource.tres"
}

static func get_item_resource(key : Keys) -> ItemResource:
	return load(ITEM_RESOURCE_PATHS.get(key))
	
const CRAFTING_BLUEPRINT_RESOURCE_PATHS := {
	Keys.Axe : "res://Resources/crafting_blueprint_resources/axe_blueprint.tres",
	Keys.Rope : "res://Resources/crafting_blueprint_resources/rope_blueprint.tres",
	Keys.Pickaxe : "res://Resources/crafting_blueprint_resources/pickaxe_blueprint.tres"
}

static func get_crafting_blueprint_resource(key : Keys) -> CraftingBlueprintResource:
	return load(CRAFTING_BLUEPRINT_RESOURCE_PATHS.get(key))

const EQUIPPABLE_ITEM_PATHS := {
	Keys.Axe : "res://Items/equippables/equippable_axe.tscn",
	Keys.Mushroom : "res://Items/equippables/equippable_mushroom.tscn",
	Keys.Pickaxe : "res://Items/equippables/equippable_pickaxe.tscn"
}

static func get_equippable_item(item_key : Keys) -> PackedScene:
	return load(EQUIPPABLE_ITEM_PATHS.get(item_key))
	
const PICKUPPABLE_ITEM_PATHS := {
	Keys.Log : "res://Items/Iteractables/rigid_pickuppable_log.tscn",
	Keys.Coal : "res://Items/Iteractables/rigid_pickuppable_coal.tscn"
}

static func get_pickuppable_item(item_key : Keys) -> PackedScene:
	return load(PICKUPPABLE_ITEM_PATHS.get(item_key))
