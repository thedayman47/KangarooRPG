//call scripts
scr_armsAttach(id, "Instances");
scr_combatSystems()

//Movement vars
move_speed = 2.5;
move_diagonally = move_speed * 0.707; //Don't ask why this number specifically, the tutorial didn't explain.
jumpStrength = 1;

//interaction
interactRange = 48;

//Combat vars
baseDamage = 10;
finalDamage = 10;

//Attributes
experiencePoints = 0;
hitPoints = 100;
offense = 1;
defense = 1;
energyStam = 1;
rageSpecial = 1;

//Attacks
attackRange = 64;

priAttSpeed = 1;
altAttSpeed = 1;
speAttSpeed = 1;
supAttSpeed = 1;

priAttCooldown = 1;
altAttCooldown = 1;
speAttCooldown = 1;
supAttCooldown = 1;