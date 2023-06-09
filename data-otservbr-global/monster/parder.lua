local mType = Game.createMonsterType("Parder")
local monster = {}

monster.description = "a parder"
monster.experience = 230
monster.outfit = {
	lookType = 1533,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2256
monster.Bestiary = {
	class = "Mammal",
	race = BESTY_RACE_MAMMAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Marapur."
	}

monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 39202
monster.speed = 105
monster.manaCost = 300

monster.changeTarget = {
	interval = 4000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Grrrr", yell = false},
	{text = "Groar", yell = false}
}

monster.loot = {
	{name = "Gold Coin", chance = 39750, maxCount = 288},
	{name = "Strong Health Potion", chance = 1750, maxCount = 4},
	{name = "Red Crystal Fragment", chance = 5750, maxCount = 4},
	{name = "Parder Tooth", chance = 9750, maxCount = 4},
	{name = "Parder Fur", chance = 3950, maxCount = 4},
	{name = "Ham", chance = 39750, maxCount = 8},
	{name = "Barbarian Axe", chance = 400}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -199}
}

monster.defenses = {
	defense = 10,
	armor = 33
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
