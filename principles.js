//The four fundamental OOP principles are inheritance, encapsulation, abstraction and polymorphism.
//To setup the inheritance relation between classes in JavaScript, I can use the extends keyword, as in class B extends A.
class Animal { /* ...class code here... */ }
class Bird extends Animal { /* ...class code here... */ }
class Eagle extends Bird { /* ...class code here... */ }


// encapsulation has to do with making a code implementation "hidden" from other users, in the sense that they don't have to know how my code works in order to "consume" the code.
abc.toUpperCase();

//An abstraction is about extracting the concept of what you're trying to do, rather than dealing with a specific manifestation of that concept. 

//Polymorphism is a word derived from the Greek language meaning "multiple forms"

const bicycle = {
	    bell: function() {
		            return "Ring, ring! Watch out, please!"
		        }
}
const door = {
	    bell: function() {
		            return "Ring, ring! Come here, please!"
		        }
}
bicycle.bell(); // "Get away, please"
door.bell(); // "Come here, please"

class Bird {
	    useWings() {
		            console.log("Flying!")
		        }
}
class Eagle extends Bird {
	    useWings() {
		            super.useWings()
		            console.log("Barely flapping!")
		        }
}
class Penguin extends Bird {
	    useWings() {
		            console.log("Diving!")
		        }
}
var baldEagle = new Eagle();
var kingPenguin = new Penguin();
baldEagle.useWings(); // "Flying! Barely flapping!"
kingPenguin.useWings(); // "Diving!
