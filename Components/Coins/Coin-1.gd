extends Node2D
class GlobalScope:
	pass
var globals = GlobalScope

func _on_Coin2D_body_entered(body):
	$TrashSprite.queue_free()
	$CoinCollision.queue_free()
	$PickupTrash.play()
	$PickupTrash.connect("finished", self, "_on_audio_finished")

func _on_audio_finished():
	queue_free()
