### Question 1
Under the lattice graphics system, what do the primary plotting functions like xyplot() and bwplot() return?

### Answer
```an object of class "trellis"``

### QUestion 2
What is produced by the following code?
```R
library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)
```

### Answer
``` A set of 3 panels showing the relationship between weight and time for each diet.```