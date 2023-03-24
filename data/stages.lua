-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
-----------------------------------------------
local doubleExp = false
local doubleSkill = false
-----------------------------------------------
local mult = 1
local multSkill = 1


if doubleExp == true then
	mult = 2
end
if doubleSkill == true then
	multSkill = 2
end

experienceStages = {
	{
		minlevel = 1,
		maxlevel = 8,
		multiplier = 7*mult
	}, {
		minlevel = 9,
		maxlevel = 100,
		multiplier = 100*mult
	}, {
		minlevel = 101,
		maxlevel = 1000,
		multiplier = 25*mult
	}, {
		minlevel = 1001,
		maxlevel = 2200,
		multiplier = 10*mult
	}, {
		minlevel = 2201,
		multiplier = 1*mult
	}
}

skillsStages = {
	{
		minlevel = 10,
		maxlevel = 60,
		multiplier = 75*multSkill
	}, {
		minlevel = 61,
		maxlevel = 80,
		multiplier = 50*multSkill
	}, {
		minlevel = 81,
		maxlevel = 110,
		multiplier = 25*multSkill
	}, {
		minlevel = 111,
		maxlevel = 125,
		multiplier = 10*multSkill
	}, {
		minlevel = 126,
		multiplier = 2*multSkill
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 60,
		multiplier = 10*multSkill
	}, {
		minlevel = 61,
		maxlevel = 80,
		multiplier = 7*multSkill
	}, {
		minlevel = 81,
		maxlevel = 100,
		multiplier = 5*multSkill
	}, {
		minlevel = 101,
		maxlevel = 110,
		multiplier = 4*multSkill
	}, {
		minlevel = 111,
		maxlevel = 125,
		multiplier = 3*multSkill
	}, {
		minlevel = 126,
		multiplier = 2*multSkill
	}
}
