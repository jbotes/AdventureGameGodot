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
	Keys.Plant : "res://Resources/item_resources/plant_resource.tres"
}

static func get_item_resource(key : Keys) -> ItemResource:
	return load(ITEM_RESOURCE_PATHS.get(key))
