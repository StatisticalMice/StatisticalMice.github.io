@def title = "Simple moving average speed comparison in Julia, Python and R"

# Simple moving average speed comparison in Julia, Python and R

[Simple moving average in Wikipedia](https://en.wikipedia.org/wiki/Moving_average)

# The task

* Generate 10^8 random samples from the standard normal distribution
* Calculate SMA with window size 10

## Summary

| Language | Load libraries and run task | Genere random samples (mean) | Run SMA (mean) |
| -------- | --------------------------- |---------------------- | ------- |
| Julia    | 13.1 s| 1.3 s | 931 ms |
| Python   | 10.6 s| 3.3 s | 6.2 s |
| R        | 5.9 s | 4.5 s | 1.3 s |


## Python

[Python notebook](https://github.com/StatisticalMice/ProjectsPublic/blob/main/Benchmarks/python-moving-average.ipynb)

## Julia

[Julia notebook](https://github.com/StatisticalMice/ProjectsPublic/blob/main/Benchmarks/julia-moving-average.ipynb)

## R

[R notebook](https://github.com/StatisticalMice/ProjectsPublic/blob/main/Benchmarks/r-moving-average.ipynb)

