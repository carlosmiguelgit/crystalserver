local mType = Game.createMonsterType("Minotaur Cult Prophet")
local monster = {}

monster.description = "a minotaur cult prophet"
monster.experience = 1100
monster.outfit = {
	lookType = 23,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.events = {

}

monster.raceId = 1509
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Minotaurs Cult Cave",
}

monster.health = 1700
monster.maxHealth = 1700
monster.race = "blood"
monster.corpse = 5981
monster.speed = 120
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Bow to the power of the iron bull!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 100000, maxCount = 150 },
	{ name = "cowbell", chance = 18570 },
	{ name = "moonlight rod", chance = 8480 },
	{ name = "cultish robe", chance = 15450 },
	{ name = "great health potion", chance = 7070 },
	{ name = "great mana potion", chance = 16810 },
	{ name = "gold ingot", chance = 1120 },
	{ name = "small ruby", chance = 7160 },
	{ name = "small topaz", chance = 7650 },
	{ name = "yellow gem", chance = 490 },
	{ name = "platinum coin", chance = 67040, maxCount = 3 },
	{ name = "small emerald", chance = 11160 },
	{ name = "small diamond", chance = 2900, maxCount = 2 },
	{ name = "small amethyst", chance = 6680, maxCount = 2 },
	{ name = "red piece of cloth", chance = 630 },
	{ id = 3098, chance = 6730 }, -- ring of healing
	{ id = 3039, chance = 390 }, -- red gem
	{ name = "meat", chance = 8040 },
	{ name = "ham", chance = 60140 },
	{ name = "minotaur leather", chance = 14230 },
	{ name = "minotaur horn", chance = 18270, maxCount = 2 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -240 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -350, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -350, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 15,
	armor = 28,
	mitigation = 1.10,
	{ name = "Minotaur Cult Prophet Mass Healing", interval = 2000, chance = 20, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -5 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
