# Automatic-Vending-Machine-Circuit

This project aims to implement an Automatic Vending Machine, using a state machine for that purpose. It must be able to perform the following functions:
* Reading the insertion of several currencies;
* The delivery of the beverage selected by the customer if the money inserted is equal to or greater than the cost of the beverage;
* The return of change after purchase, if any;
* Money back if the Cancel button is pressed;
* The signaling of the drink exiting the machine;

In short, the functions presented above represent the objectives that must be achieved. The following Inputs / Outpus were chosen to perform the same

### Inputs

* M0 and M1 - represent the monetary value inserted in the machine.
* CLK - Clock signal that will allow changing machine states;
* CANCEL - One-bit sign that allows you to cancel the purchase and return the change inserted in the machine;
* Sel0 and Sel1 - Drink selection bits. If Sel0 = Sel1 = 0, water is selected. Otherwise, if Sel0 = Sel1 = 1, the refrigerant is selected;

### Outputs

* DRINK - Sign of one bit that represents the exit or success in the purchase of the drink (1 has the drink, 0 has no drink);
* EXCHANGE - sign of four different variables (EXCHANGE0, EXCHANGE1 ...) that represents the change given by the Machine;

Note: The project was carried out using two state machines, one for Water, the other for Refrigerant. Taking this into account, the selector was implemented in schematic, which is why the Outputs of the simulation differ from those presented above. The outputs of the simulation are as follows:
* SaiAgua - represents the acquisition of water (sign of a bit where 1 represents success, otherwise 0);
* TRA - Change in case of buying water;
* SaiRefrigerante - represents the acquisition of the refrigerant (sign of a bit where 1 represents success, otherwise 0);
* TRR - Change in case of buying a soft drink;

## Note

The project was carried out in the Xilinx ISE software;

## Authors

* **Pedro Sousa**
