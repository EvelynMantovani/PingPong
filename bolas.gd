extends Node2D

var velocy: int = 180
var velocx: int = 10
var direy: int = 1
var direx: int = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = position.y + direy *velocy *delta
	if position.y >= 640:
		direy = -direy
		#position.y =640
		
	elif position.y <=10:
		direy = -direy
	print(position)


	position.x = position.x + direx *velocy *delta
	if position.x >= 644:
		direx = -direx
		#position.y =640
		
	elif position.x <=10:
		direx = -direx
	print(position)
