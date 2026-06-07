extends Node

var activeTweens = {}

func RemoveTween(object):
	if(HasTween(object)):
		for i in activeTweens[object]:
			if i.is_running():
				return
		
		activeTweens.erase(object)
	pass

#func CreateTween(object: Object, property: PackedStringArray, finalValue: Array[Variant], duration: PackedFloat32Array):
	#if(activeTweens.has(object)):
		#activeTweens[object].kill()
	#
	#var tween = get_tree().create_tween()
	#var counter = 0
	#for p in property:	
		#tween.tween_property(object, p, finalValue[counter], duration[counter])
	#
	#tween.finished.connect(RemoveTween.bind(object))
	#pass

func Nuke(exceptions = []):
	for key in activeTweens:
		if key.name in exceptions:
			continue
			
		for t in activeTweens[key]:
			#print(key, " -- ", t)
			t.pause()
			t.kill()
		RemoveTween(key)

func StopAll(object):
	if(activeTweens.has(object)):
		for i in activeTweens[object]:
			i.pause()
			i.kill()
			
		RemoveTween(object)

func FinishAll(object):
	if(activeTweens.has(object)):
		for i in activeTweens[object]:
			i.pause()
			i.custom_step(INF)
			i.kill()
			
		RemoveTween(object)

func CreateTween(object, clear = true):
	#print(object)
	if clear:
		FinishAll(object)
	
	if !HasTween(object):
		activeTweens[object] = []
		
	var tween = get_tree().create_tween()
	activeTweens[object].append(tween)
	tween.finished.connect(RemoveTween.bind(object))
	return tween

func HasTween(object):
	return activeTweens.has(object)
	#if activeTweens.has(object):
		#if !activeTweens[object].any(func(i): return i.is_running()):
			#RemoveTween(object)
			#return false
		#return true
	#return false)
