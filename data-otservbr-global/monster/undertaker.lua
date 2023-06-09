local mType = Game.createMonsterType("Undertaker")
local monster = {}

monster.name = "Undertaker"
monster.description = "an undertaker"
monster.experience = 15710 
monster.outfit = {
	lookType = 1551,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2269 --funciona
monster.Bestiary = {
	class = "Elemental",
	race = BESTY_RACE_ELEMENTAL,
	toKill = 5000,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Monster Graveyard"
}
monster.health = 18100
monster.maxHealth = 18100
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 39295
monster.speed = 205
monster.summonCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = false,
	convinceable = false,
	illusionable = false,
	boss = false,
	ignoreSpawnBlock = false,
	pushable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	healthHidden = false,
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
	{text = "Hizzzzz!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.attacks = {
	{name ="melee", interval = 1000, chance = 100, skill = 90, attack = 100},
	{name ="combat", interval = 5000, chance = 58, type = COMBAT_FIREDAMAGE, minDamage = -650, maxDamage = -780, range = 7, radius = 5, shootEffect = CONST_ANI_WHIRLWINDAXE, target = true},
	{name ="combat", interval = 2000, chance = 38, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -680, range = 7, radius = 5, shootEffect = CONST_ANI_WHIRLWINDAXE, target = true},
	{name ="combat", interval = 3000, chance = 68, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -800, range = 7, shootEffect = CONST_ANI_WHIRLWINDAXE, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
	defense = 77,
	armor = 77
}

monster.loot = {
	{ name = "great spirit potion", chance = 33894, maxCount = 3},
	{ name = "undertaker fangs", chance = 25000},
	{ name = "crystal coin", chance = 15625, maxCount = 3},
	{ name = "terra boots", chance = 4087},
	{ name = "spider silk", chance = 4087},
	{ name = "blue crystal shard", chance = 3125},
	{ name = "terra legs", chance = 2163},
	{ name = "necrotic rod", chance = 1442},
	{ name = "relic sword", chance = 1442},
	{ name = "wand of voodoo", chance = 1442},
	{ name = "butterfly ring", chance = 962},
	{ name = "violet gem", chance = 962}
}

mType:register(monster)

