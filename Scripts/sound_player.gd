extends Node

onready var music = AudioStreamPlayer.new()

var music_tracks = {
	"title_track":"res://sfx/music/soundtrackc.mp3.mp3",
	"main":"res://sfx/music/soundtrackc.mp3.mp3",
}

var sound_effects = {
	"jump":"res://sfx/Player/2d_gamejump.mp3",
	"dead":"res://sfx/Player/yt1s (mp3cut.net) (1).mp3",
	"click":"res://sfx/Player/click.mp3",
	"beep":"res://sfx/Player/yt1s.io - Censor beep sound effect (128 kbps).mp3",
	"field":"res://sfx/Player/yt1s.io - Activate Force Field Sound Effect (128 kbps).mp3",
}

var music_db = 1
var sound_db = 5

func change_music_db(val):
	music_db = linear2db(val)
	


func change_sound_db(val):
	sound_db = linear2db(val)
	
	

func _ready():
	music.stream = load(music_tracks["main"])
	add_child(music)
	music.play()


func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
