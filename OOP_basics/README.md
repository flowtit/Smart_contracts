The file contains a few smart contracts: HasName, Animal, Herbivore, Carnivore, Omnivore, Cow, Horse, Wolf, Dog, and Farmer.

The abstract smart contract Animal has "eat()" and "speak()" functions, so all descendants of the Animal have "eat()" and "speak()" functions. Direct descendants of an Animal contract are Herbivore, Carnivore, or Omnivore contract which adds a check for the "eat()" function (the parameter of the "eat()" function can only have certain values). 

The Cow, Horse, Wolf, and Dog contracts are descendants of not only Animal contract, but also Herbivore, Carnivore, and Omnivore contracts, therefore they have all the characteristics of those contracts and also have their own implementation of the speak() function ("Cow.speak()" returns “Mooo”, "Horse.speak()" returns “Igo-go").
