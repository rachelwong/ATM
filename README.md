## Basic ATM using MVC

#### How to run
```
ruby atm.rb
```
#### View functionalities
* Display user messages
  * error messages (overdrawn, invalid input)
  * welcome, goodbye
  * balance update
  * amount prompts
* Take user input for amounts and menu options

#### Model functionalities
* Process deposit, withdrawal, get balance methods
* Amount validation and overdrawn account checking

#### Controller functionalities
* Switchboard menu to send parameters along to model
* Communicates with *View* to display user messages

#### Extensible features
* User authentication (a pin check)
* Implement a kids account version


#### Bugs
* Allows overdrawn  - fixed @ 28/3
* When Deposit is chosen and no amount is provided, it depletes the balance. - fixed @ 28/3
* Pin authentication is not fixed

### Key lessons learnt
* *Model* doesn't talk to *View*. Controller talks to *View* to pass the result to model to compute.
