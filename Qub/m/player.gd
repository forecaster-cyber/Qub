extends KinematicBody2D

const UP = Vector2(0,-1)
const FLAP = 250
const MAXFALLSPEED = 200
const GRAVITY = 10
var motion = Vector2()
#var enemy1 = preload("res://enemy1.tscn")
var score = 0
#var pos = Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	if Input.is_action_just_pressed("Flap"):
		motion.y = -FLAP
	motion = move_and_slide(motion)
	$Label.text = str(Globals.score)
	var x = self.position.x
	var y = self.position.y
	#pos = Vector2(x, y-560)
	


func _on_Area2D_area_entered(area):
	if area.name == "fail":
		$Button.hide()
		$"Lose menu".show() 
	if area.name == "point":
		
		remove_child(area)
		area.queue_free()
		Globals.score += 1
		#var instance = enemy1.instance()
		#instance.global_position = pos
		#add_child(instance)
