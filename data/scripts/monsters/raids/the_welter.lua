local mType = Game.createMonsterType("The Welter")
local monster = {}

monster.description = "The Welter"
monster.experience = 11000
monster.outfit = {
	lookType = 563,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 21291
monster.speed = 256
monster.summonCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 2000,
	chance = 5
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 300,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "egg2", chance = 16, interval = 2000},
	{name = "spawn of the welter", chance = 16, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "FCHHHHH", yell = true}
}

monster.loot = {
	{id = 21400, chance = 200},
	{id = 21690, chance = 200},
	{id = 2475, chance = 2000},
	{id = 21691, chance = 500},
	{id = 2195, chance = 1000},
	{id = 2536, chance = 2000},
	{id = 2396, chance = 2000},
	{id = 2146, chance = 20000, maxCount = 2},
	{id = 2476, chance = 3000},
	{id = 7588, chance = 20000, maxCount = 2},
	{id = 10219, chance = 1000},
	{id = 2197, chance = 20000},
	{id = 9971, chance = 800},
	{id = 2498, chance = 500},
	{id = 7632, chance = 600},
	{id = 4850, chance = 2000},
	{id = 7589, chance = 20000, maxCount = 2},
	{id = 2152, chance = 20000, maxCount = 10},
	{id = 2148, chance = 20000, maxCount = 100}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, skill = 90, attack = 100, effect = CONST_ME_DRAWBLOOD},
	-- poison
	{name ="combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 17, minDamage = -500, maxDamage = -660, length = 8, spread = 3, effect = CONST_ME_SMALLPLANTS, target = false},
	{name ="combat", interval = 2000, chance = 14, minDamage = -200, maxDamage = -450, type = COMBAT_DEATHDAMAGE, length = 8, spread = 3, effect = CONST_ME_BLACKSMOKE, target = false},
	{name ="combat", interval = 2000, chance = 18, minDamage = -150, maxDamage = -270, type = COMBAT_ICEDAMAGE, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 13, minDamage = -120, maxDamage = -230, type = COMBAT_ICEDAMAGE, range = 1, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 9, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 27,
	{name ="combat", interval = 2000, chance = 32, minDamage = 250, maxDamage = 600, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 2000, chance = 12, minDamage = 150, maxDamage = 700, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="combat", interval = 2000, chance = 9, target = false},
	{name ="combat", interval = 2000, chance = 8, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
