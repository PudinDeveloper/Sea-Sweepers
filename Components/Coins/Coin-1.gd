extends Node2D

func _on_Coin2D_body_entered(body):
	$PickupTrash.play()
	$PickupTrash.connect("finished", self, "_on_audio_finished")

func _on_audio_finished():
	queue_free()
