local mType = Game.createMonsterType("Teste Death")
local monster = {}
monster.description = "Teste Death"
monster.experience = 0
monster.outfit = {
	lookType = 57
}

monster.health = 1000000
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 0
monster.speed = 0

monster.changeTarget = {
	interval = 1*1000,
	chance = 0
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	targetDistance = 1,
	staticAttackChance = 100,
}

monster.summons = {
}

monster.voices = {
	interval = 5000,
	chance = 0,
	{text = "I hope you are enjoying your sparring Sir or Ma'am!", yell = false},
	{text = "Threat level rising!", yell = false},
	{text = "Engaging in hostile interaction!", yell = false},
	{text = "Rrrtttarrrttarrrtta", yell = false},
	{text = "Please feel free to hit me Sir or Ma'am!", yell = false},
	{text = "klonk klonk klonk", yell = false},
	{text = "Self-diagnosis running.", yell = false},
	{text = "Battle simulation proceeding.", yell = false},
	{text = "Repairs initiated!", yell = false}
}

monster.loot = {
}

monster.attacks = {
	--{name = "melee", attack = 130, interval = 2*1000, minDamage = -1, maxDamage = -2},
	--{name ="combat", interval = 2000, chance = 100, type = COMBAT_MANADRAIN, minDamage = 500, maxDamage = 500, range = 1, target = false}
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -100, range = 1, target = false}
}

monster.defenses = {
	defense = 1,
	armor = 1,
	{name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2*1000, minDamage = 10000, maxDamage = 50000, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
}

monster.immunities = {
}

mType:register(monster)
