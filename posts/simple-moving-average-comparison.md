@def title = "Simple moving average speed comparison in Julia, Python and R"

# Simple moving average speed comparison

This post compares the performance of Julia, Python and R when running a simple task
in a Jupyter notebook. Speed is measured in two ways. The first measurement measures
how fast the language can provide answers when run in a notebook. This takes in account
that Julia often spends time in compilation, while Python and R either use pre-compiled
binaries or interpret code. The second measurement measures the actual performance on the task.

[Simple moving average in Wikipedia](https://en.wikipedia.org/wiki/Moving_average)

# The task

* Generate 10^8 random samples from the standard normal distribution
* Calculate SMA with window size 10

# Environment

The notebooks were run in a 2020 MacBook Pro with four ports (standard configuration with Intel processor) with 16 GB of RAM.

## Summary

| Language | Load libraries and run task | Generate random samples (mean) | Run SMA (mean) |
| -------- | --------------------------- |---------------------- | ------- |
| Julia [^1]    | 14.1 s| 1.4 s | 147 ms |
| Julia [^2]   | 3.0 s| 1.4 s | 140 ms |
| Python [^3]  | 10.6 s| 3.3 s | 6.2 s |
| R [^4] | 45 s | 4.7 s | 1.0 s / 43.7 s |

[^1]: Measures Julia performance when run in a fresh kernel and incurs costs for compiling code.
[^2]: Measures re-running the Julia notebook, so code has already been compiled.
[^3]: There was no significant difference between the first and second runs.
[^4]: R was quite fast in calculating the moving average, but data.frame handling was really slow for this code. The last column shows first just the SMA calculation, and then the time required for also updating the data.frame. R code should probably be re-written using data.table.

## Python

[Python notebook](https://github.com/StatisticalMice/ProjectsPublic/blob/main/Benchmarks/python-moving-average.ipynb)

## Julia

[Julia notebook](https://github.com/StatisticalMice/ProjectsPublic/blob/main/Benchmarks/julia-moving-average.ipynb)

## R

[R notebook](https://github.com/StatisticalMice/ProjectsPublic/blob/main/Benchmarks/r-moving-average.ipynb)

