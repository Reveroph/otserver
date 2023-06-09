local mType = Game.createMonsterType("Hulking Prehemoth")
local monster = {}

monster.name = "Hulking Prehemoth"
monster.description = "a hulking prehemoth"
monster.experience = 14720
monster.outfit = {
	lookType = 1553,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2271--funciona
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
monster.health = 19090
monster.maxHealth = 19090
monster.runHealth = 0
monster.race = "venom"
monster.corpse = 39303
monster.speed = 191 
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
	{text = "SMAASH!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -30},
	{type = COMBAT_HOLYDAMAGE , percent = -30},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 250, maxDamage = -2300, condition = {type = CONDITION_POISON, totalDamage = 55, interval = 4000}},
	{name ="combat", interval = 3000, chance = 17, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -1000, range = 1, target = false},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -500, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1750, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_MORTAREA, target = false}

}

monster.defenses = {
	defense = 84,
	armor = 84
}

monster.loot = {
	{ name = "crystal coin", chance = 27986},
	{ name = "ultimate health potion", chance = 17291},
	{ name = "prehemoth horns", chance = 17112},
	{ name = "prehemoth claw", chance = 15865, maxCount = 2},
	{ name = "furry club", chance = 7665},
	{ name = "war hammer", chance = 3565},
	{ name = "war axe", chance = 3030},
	{ name = "doublet", chance = 2496},
	{ name = "emerald bangle", chance = 1070},
	{ name = "silver brooch", chance = 1070}
}

mType:register(monster)