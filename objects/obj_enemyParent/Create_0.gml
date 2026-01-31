/// @description enemy init

hitPoints = 200; // big number for debug and development-- fix later
rngValue = 23; //number to send to rng scripts


//Movement vars
moveSpeed = 3; 
acceleration = 0.2
turnRate = 4;

//combat vars
canAttack = true; 
baseDamage = 5;
attackCooldown = 30;
detectRange = 280;
attackRange = 64;
attackAngle = 45;
preferredRange = 32; 
aggroTime = 120; 
aggroCooldown = 360;


enemyAttack = scr_enemyAttack();



