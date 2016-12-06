import random


#
#class Greeter(object):
#	def __init__(self, name):
#		self.name = name
#	def hello(self):
#		print("Hello " + self.name)
#	def goodbye(self):
#		print("goodbye " + self.name)

#g = Greeter("Manuel")
#g.hello()
#g.goodbye()

#g2 = Greeter("Karen")
#g2.hello()
#g2.goodbye()

class Die(object):
	def __init__(self, sides):
		self.sides = sides
	def roll(self):
		return random.randint(1,6)
print("D6 rolls:")
d = Die(6)
print(d.roll())

print("D20 rolls:")
d = Die(20)
print(d.roll())

class Deck(object)
	def shuffles(self):
		suits = ["Spades", "Hearts", "Clubs", "Diamonds"]
		ranks = ["1",2"",3"","4","5","6","7","8","9","10","Jack","Queen","King","Ace"]
		cards = []
		for suit in suits:
			for rank in ranks:
				self.cars.append(suit + " of " + rank)
		random.shuffle(self.cards)
	def deal(self):
		return self.cards.pop()
	
