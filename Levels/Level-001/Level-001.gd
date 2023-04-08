extends Node2D

var submarine_scene = load("res://Players/Submarine.tscn")
var submarine = submarine_scene.instance()
get_tree().get_root().add_child(enemigo)

var enemigo_scene = load("res://Enemigo.tscn")
var enemigo = enemigo_scene.instance()
add_child(enemigo)
