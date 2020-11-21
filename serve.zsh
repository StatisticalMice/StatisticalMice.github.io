#!/bin/zsh
julia --project=. -e "using Franklin; serve(clear=true,eval_all=true)"

