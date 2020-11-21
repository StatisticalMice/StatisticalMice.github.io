@def title = "Simple moving average speed comparison in Julia, Python and R"

# Simple moving average speed comparison in Julia, Python and R

[Simple moving average in Wikipedia](https://en.wikipedia.org/wiki/Moving_average)

The task is to calculate the simple moving average for a dataframe column containing 1,000,000 samples from the standard normal distribution and storing it in another column. The sliding window is of length 10.

## Python

* Running the jupyter notebook took 0.70 seconds. 
* Calculating SMA by calling Numpy directly took 28 ms (mean).
* Calculating SMA by calling Numpy via a user defined function took 6.03 *seconds* (mean).
* Calculating SMA by calling Numpy via a user defined function, but accelerating with Numba could not be run yet, because at the time of writing it is not supported in Python 3.9. A previous run of this took 202 ms (mean).

## Julia

* Running the jupyter notebook took 9.0 seconds.
* Calculating SMA took 14 ms (mean). 

## R

Not done yet.

