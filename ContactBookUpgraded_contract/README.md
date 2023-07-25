Added new contract "Contact" that has:
1. variable _name (string);
2. a constructor that requires a name parameter and assigns it to the _name variable;
3. function "getName", which returns the value of _name;
4. The "reply" function, which returns the string "<name> on call!", where instead of <name> the value is inserted into the _name variable.

Also "callContact" function, which takes the contact number in the _contacts array as a parameter, refers to this smart contract by its address (which is obtained from the _contracts array), calls the "Contact.reply" function and returns the result of the "reply" function("<name> on call!").
