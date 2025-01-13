/// @description Init Character Code

	// Set up GM Vars
	image_speed = 0;
	image_index = 0;
	sprite_index = 0;

	// Create Objects
	PlayerCam = instance_create_depth(x, y, -99999, Camera); // Camera
	StageManager = instance_create_depth(x, y, -99999, Stage); // Stage Controller
	
	// Set up Checkpoint system
	if GameData.StageCheckPointPassed == true { //if the checkpoint check returns true.
		x = GameData.StageCheckPointX; // set Player's X to the Checkpoint's X
		y = GameData.StageCheckPointY; // set Player's Y to the Checkpoint's Y
	}
	
	// Character Init:
	depth = -2;
	character = GameData.CurrentCharacter; // Main Character
	endStageType = PlayerClearRush; //Stage Clear Action
	form = PlayerFormNormal; // Current Form
	
	mask = 16; // The Player's Mask (Used for collision)
	
	allowMovement = false; // Movement Check (Usually disabled during a Title Card.)
	
	platformCheck = false; // Checks if the player is in a platform
	
	speedX = 0; // Horizontal Speed
	speedY = 0; // Vertical Speed
	speedLimitX = 15; // Horizontal Speed Limit
	speedMidX = 12; // Normal Horizontal Speed
	speedLimitY = 16; // Vertical Speed Limit
	
	speedJump = -6; // Jump Height!
	speedLowJump = -4.5; // Low Jump Height
	homingEnable = false; // Homing Attack Enable!
	homingDash = false; // Air Dash.
	
	accel = 0.125; // Player Accel.
	decel = 0.5; // Player Decel.
	decelRoll = 0.1484375;
	
	fric = 0.046875; // Friction.
	fricRoll = 0.023475; // Friction (While Rolling).
	grav = 0.21875; // Gravity.
	
	ground = false; // Ground Check.
	
	acos = 1; // Cosine (Angle).
	asin = 0; // Sine (Angle).
	angle = 0; // Angle.
	
	characterLayer = 0; // Current Collision Layer.
	
	actionCurrent = PlayerActionNormal; // Action Check.
	actionLast = PlayerActionNormal; // Previous Action.
	
	// Actions:
	boostAmount = 100; // Amount of Boost Energy left.
	isBoosting = false; // Checks if the Player is currently Boosting.
	allowBoost = true; // Checks if the Player can even Boost at *ALL* (Unused, could be useful in some form)
	spindashEnergy = 0; // The energy used to charge a Spin Dash.
	isHit = true; // Checks if the Player is hurt by... Something?
	wallJumpOff = false; // Allows the Player to jump off a wall (Used for Wall Jump).
	aboveWater = false; // Checks if the Player can run above the water.
	allowGrinding = true; // Allows the Player to grind on and off rails... Just like the hit game, Fortnite.
	isDead = false; // Used to check if the Player is now DEAD.
	isUnderwater = false; // Checks if the Player is now "Under the sea!"
	qteAmount = 1; // Checks the QTE amount.
	currentPanel = 1; // Used in Jump Panels. Checks the current Jump Panel.
	speedZip = 0; // The speed gotten from the Zipline.
	lookTimer = 0; // Look Timer, Used for the Camera.
	allowStomp = true; // Allows the Player to Stomp.
	allowSliding = true; // Allows the Player to Slide.
	slidingTimer = 0; // Time left to reenable the slide
	
	// Effects:
	trailStep = 0; // trail timer.
	trailBlend = c_white; // trail color
	dustIndex = 0; // animation index for the Spin Dash dust effect.
	damageEffect = 0; // timer for the invincbility effect after being damaged.
	canFootstep = false; // Allows for the footstep sounds to be used.
	soundFootstep = [-1, -1];
	
	// Animation System:
	animDir = 1; // Animation Direction
	image_alpha = 1; // Animation Alpha
	animYPosDraw = 0; // Player's custom Y position for sprite drawing.
	image_angle = 0; // Animation Angle.
	sprite_index = sprSonicIdle; // The current animation sprite
	animFrame = 0; // the current animation frame
	image_index = 0; // the current animation index
	
	// Custom Alarm System:
	newAlarm[0] = 0;
	newAlarm[1] = 0;
	newAlarm[2] = 0;
	newAlarm[3] = 0;
	newAlarm[4] = 0;
	newAlarm[5] = 0;
	newAlarm[6] = 0;
	newAlarm[7] = 0;
	newAlarm[8] = 0;
	
	inputType = InputKeyboard; // Input Type
	// Only Keyboard and XInput (Using Xbox Buttons) are supported.
	// For additional input types, use Juju Adams' Input extension.
	