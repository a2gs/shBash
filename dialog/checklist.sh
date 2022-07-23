#!/bin/bash

opt=$(dialog --stdout --checklist 'Choose toppings:' 10 40 5 1 'Cheese' on 2 'Tomato Sauce' on 3 'Anchovies' off 4 'Bacon' on 5 'Salad' off)

clear

echo "[$opt]"
