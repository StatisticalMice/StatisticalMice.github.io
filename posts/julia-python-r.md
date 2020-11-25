@def title = "Julia / Python / R"

# Julia, Python and R compared *(draft)*

This post contains some comparison notes between these three languages.

## Performance using packages and running code

* Julia is slower than Python or R when loading packages in a script or during initial running of functions due to precompiling.
* When _executing code_ Julia is faster than Python or R because it is compiled to native code. When Python or R call code implemented in a package that's compiled to native code, the speeds are similar.

An example task is detailed on the following page: [Simple moving average speed comparison in Julia, Python and R](/posts/simple-moving-average-comparison)

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



