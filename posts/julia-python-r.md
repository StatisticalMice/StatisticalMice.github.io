@def title = "Julia / Python / R"

# Julia, Python and R compared *(draft)*

This post contains some comparison notes between these three languages.

## Performance using packages and running code

Summary: Julia has a performance edge when doing slightly larger computations for which R or Python don't have an optimized library already available.

Using a package requires loading it in a script, and running it.
* Julia is slower when _loading a package_ in a script than Python or R. Similarly _running a piece of code for the first time_ is slower. This difference comes from the fact that Julia does precompiling at this stage.
* When _executing code_ Julia is faster than Python or R because it is compiled to native code. When Python or R call code implemented in a package that's compiled to native code, the speeds are similar.

An example task was performed and benchmarked: calculating the simple moving average for a dataframe column containing 1,000,000 samples from the standard normal distribution.
* Python needed 0.70 seconds to import packages and run the task.
* Python needed 28 ms to run the task directly via Numpy and up to 6.03 seconds when using a custom function calling the Numpy function. This can be accelerated to 202 ms using Numba.
* Julia needed 9.0 seconds to import packages and run the task.
* Julia needed 14 ms to run the task. 
* Read more in [Simple moving average speed comparison in Julia, Python and R](/posts/simple-moving-average-comparison)

## Calling code in one language from another

* [reticulate - Call Python from R](https://rstudio.github.io/reticulate/articles/calling_python.html)
* [rpy2 - Call R from Python](https://rpy2.github.io/doc/latest/html/index.html)
* [PyCall - Call Python from Julia](https://github.com/JuliaPy/PyCall.jl)
* [PyJulia - Call Julia from Python](https://github.com/JuliaPy/pyjulia)
* [RCall - Call R from Julia](https://github.com/JuliaInterop/RCall.jl)
* [JuliaCall - Call Julia from R](https://cran.r-project.org/web/packages/JuliaCall/index.html)


## Resources

[Julia vs. Python: Which is best for data science? (May 2020)] (https://www.infoworld.com/article/3241107/julia-vs-python-which-is-best-for-data-science.html)
[Python vs. R for Data Science: What’s the Difference? (January 2020)](https://www.datacamp.com/community/blog/when-to-use-python-or-r)



