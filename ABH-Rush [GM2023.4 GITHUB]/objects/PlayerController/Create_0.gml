/// @description Init Character Code

	// Create Objects
	PlayerCam = instance_create_depth(x, y, 0, Camera); // Camera
	StageManager = instance_create_depth(x, y, 0, Stage); // Stage Controller
	
	// Set up Checkpoint system
	if instance_exists(StageManager) { // Check if Stage Controller is available
		if StageManager.StageCheckPointPassed == true { //if the checkpoint check returns true.
			x = StageManager.StageCheckPointX; // set Player's X to the Checkpoint's X
			y = StageManager.StageCheckPointY; // set Player's Y to the Checkpoint's Y
		}
	}
	
	// Character Init:
	depth = -1;
	character = PlayerSonic; // Main Character
	form = PlayerFormNormal; // Current Form
	
	mask = 16; // The Player's Mask (Used for collision)
	
	allowMovement = false; // Movement Check (Usually disabled during a Title Card.)
	
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
	allowBoost = true; // Checks if the Player can even Boost at *ALL*
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
	
	// Effects:
	trailStep = 0; // trail timer.
	dustIndex = 0; // animation index for the Spin Dash dust effect.
	damageEffect = 0; // timer for the invincbility effect after being damaged.
	canFootstep = false; // Allows for the footstep sounds to be used.
	soundFootstep[0] = -1;
	soundFootstep[1] = -1;
	
	// Animation System:
	animDir = 1; // Animation Direction
	animAlpha = 1; // Animation Alpha
	animYPosDraw = 0; // Player's custom Y position for sprite drawing.
	animAngle = 0; // Animation Angle.
	animSprite = sprSonicIdle; // The current animation sprite
	animFrame = 0; // the current animation frame
	animIndex = 0; // the current animation index
	
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
	