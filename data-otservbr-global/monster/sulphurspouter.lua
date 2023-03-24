local mType = Game.createMonsterType("Sulphur Spouter")
local monster = {}

monster.name = "Sulphur Spouter"
monster.description = "a sulphur spouter"
monster.experience = 11517
monster.outfit = {
	lookType = 1547,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2265 -- funciona
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



monster.health = 17100
monster.maxHealth = 17100
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 39279
monster.speed = 180
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
	targetDistance = 4,
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
	{text = "Gruugl...", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -900},
	{name ="combat", interval = 2500, chance = 35, type = COMBAT_MANADRAIN, minDamage = -100, maxDamage = -1700, length = 6, spread = 0, effect = CONST_ME_LOSEENERGY},
	{name ="combat", interval = 2000, chance = 45, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -800, range = 4, radius = 1, target = true, effect = COMBAT_HOLYDAMAGE, shootEffect = CONST_ANI_ICE},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -900, radius = 4, target = false, effect = COMBAT_HOLYDAMAGE}
}

monster.defenses = {
	defense = 84,
	armor = 84
}

monster.loot = {
	{ name = "sulphur powder", chance = 44954},
	{ name = "crystal coin", chance = 20183, maxCount = 2},
	{ name = "ultimate mana potion", chance = 11927, maxCount = 2},
	{ name = "slightly rusted legs", chance = 4587},
	{ name = "yellow gem", chance = 2752},
	{ name = "warrior's shield", chance = 2752},
	{ name = "knight legs", chance = 1835},
	{ name = "fire sword", chance = 1376},
	{ name = "crystal crossbow", chance = 917}

}

mType:register(monster)