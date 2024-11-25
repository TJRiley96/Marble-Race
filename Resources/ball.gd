class_name Ball extends Resource

@export_category("Info")
@export var name: StringName

@export_category("Visual")
@export var texture: Texture
@export_range(0.00001, 0.75, 0.001) var scale: float = 0.015
