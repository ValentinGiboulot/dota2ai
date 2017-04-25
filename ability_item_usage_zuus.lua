local npcBot = GetBot();

local abilities = {};

for i=0,23,1 do
	table.insert(abilities,npcBot:GetAbilityInSlot(i));
end

local AbilityToLevelUp=
{
	abilities[1],
	abilities[2],
	abilities[2],
	abilities[3],
	abilities[2],
	abilities[5],
	abilities[2],
	abilities[1],
	abilities[1],
	abilities[6],
	abilities[1],
	abilities[5],
	abilities[3],
	abilities[3],
	abilities[8],
	abilities[3],
	abilities[5],
	abilities[10],
	abilities[12],
}


function AbilityLevelUpThink()


	if( npcBot:GetAbilityPoints() >= 1)
	then
		npcBot:ActionImmediate_LevelAbility(AbilityToLevelUp[1]:GetName());
		table.remove( AbilityToLevelUp, 1 );
	end
	 


end

