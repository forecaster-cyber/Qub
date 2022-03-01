extends Node2D

var enemy1 = preload("res://enemy1.tscn")
# Declare member variables here. Examples:
var y = 0
# var b = "text"
var pos = Vector2(0, y)

# Called when the node enters the scene tree for the first time.
func _ready():
		#var instance = enemy1.instance()
		#instance.set_position(Vector2(0, -200))
		
		#add_child(instance)
	Globals.score = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Flap"):
		Input.vibrate_handheld(500)



func _on_Area2D_area_entered(area):
	pass
	#if area.name == "point":
		#$Timer.start()
		#y-=100
		#print(y)
		#var instance = enemy1.instance()
		#instance.position.y = y
		#instance.position.x = 0
		#add_child(instance)


func _on_Timer_timeout():
		y-=500
		print(y)
		var instance = enemy1.instance()
		add_child(instance)
		instance.position = Vector2(-35, y)
		$Timer.start()


func _on_Deleter_area_entered(area):
	var todelete = area.get_parent()
	remove_child(todelete)
	todelete.queue_free()


func _on_Button_button_down():
	Input.vibrate_handheld(500)

	get_tree().change_scene("res://flapp.tscn")
	
