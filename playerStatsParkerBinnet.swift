let playerName = "M'aiq The Liar"
var health = 100
var stamina = 100
var manna = 100
var carryWeight = 350
var septims = 800

// player is hit
health = health - 30

// player hits enemy
stamina = stamina - 50

// player casts spell on enemy
manna = manna / 3

// player drinks fortify health potion
health = health * 4

// player loots enemy
carryWeight = carryWeight + 25
septims = septims + 16

// player's potion wears off
health = 100

// player opens menu to view current stats
print("Player Stats")
print("health: ")
print(health)
print("stamina: ")
print(stamina)
print("manna")
print(manna)
print("carry weight")
print(carryWeight)
print("gold")
print(septims)
