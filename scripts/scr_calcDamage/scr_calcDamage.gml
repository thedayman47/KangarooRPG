//@func scr_calcDamage()
//@arg baseDmg
//@arg offense
//@arg targetDefense
//@arg critChance between 0 and 1
//@arg critMultiplier
function scr_calcDamage(){
	
	//check if a critical hit occurs
	var critHappens = 0;
	if (random(1)<critChance)
	{
		critHappens = 1;
	}
	
	//calculate finalDmg 
	finalDmg = baseDmg*offense*(1+(critHappens*critMultiplier))-targetDefense;
	if (finalDmg < 1)
	{
		finalDmg = 1;	
	}
	return finalDmg;
}