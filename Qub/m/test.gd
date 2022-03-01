extends Node2D

var y = 0
# var b = "text"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var enemy1 = preload("res://enemy1.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Timer_timeout():
		y-=100
		print(y)
		var instance = enemy1.instance()
		
		add_child(instance)
		instance.position = Vector2(0, y)
		$Timer.start()
