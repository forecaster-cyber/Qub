extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#var enemy1 = preload("res://enemy1.tscn")
var speed = rand_range(0.5, 2)

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var speed = rand_range(0.5, 2)
	$AnimationPlayer.playback_speed = speed
	print(speed)
	self.position= Vector2(0 , -400)
	#print(Globals.y-49)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.score > 10:
		speed = rand_range(2, 3)


func _on_point_area_entered(area):
	if area.name == "player_area":
		pass
		#var instance = enemy1.instance()
		#instance.global_position = pos
		#add_child(instance)
