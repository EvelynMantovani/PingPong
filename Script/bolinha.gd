extends Node2D

var velocy: int = 180
var velocx: int = 180
var direy: int = 1
var direx: int = 1

signal pl1_perdeu
signal pl2_perdeu

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = position.y + direy *velocy *delta
	position.x = position.x + direx *velocx *delta
	if position.y >= 640:
		direy = -direy
		#position.y =640
		
	elif position.y <=10:
		direy = -direy
	#print(position)
	
func _on_area_bolinha_area_entered(area: Area2D) -> void:
	direx = -direx

	if position.x <=0
		pl1_perdeu
	if position.y >=area
		pl2_perdeu
