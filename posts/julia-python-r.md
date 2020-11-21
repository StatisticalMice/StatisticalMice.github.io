@def title = "Julia / Python / R"

# Julia, Python and R compared *(draft)*

This post contains some comparison notes between these three languages.

## Performance using packages and running code

Using a package requires installing it, loading it in a script, and running it.
* Python and R are somewhat slower than Julia when _installing packages_. Python and R use it for compiling and Julia for precompiling.
* Julia is much slower when _loading a package_ in a script than Python or R. Similarly _running a piece of code for the first time_ is much slower. This difference comes from the fact that Julia does more precompiling at this stage.
* When _executing code_ Julia is much faster than Python or R because it is compiled to native code. When Python or R call code implemented in a package that's compiled to native code, the speeds are similar.

Summary: Julia has a performance edge when doing slightly larger computations for which R or Python don't have an optimized library already available.

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



