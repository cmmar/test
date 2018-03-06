### explore_list.R
### 3/2/18 cmm

### https://www.statmethods.net/input/datatypes.html

> help("list")
> test <- list(1,2,3)
> test
[[1]]
[1] 1

[[2]]
[1] 2

[[3]]
[1] 3

> str(test)
List of 3
$ : num 1
$ : num 2
$ : num 3
> test[[1]]
[1] 1
> test[1]
[[1]]
[1] 1

> str(test[1])
List of 1
$ : num 1
> str(test[[1]])
num 1
> aa <- test[1]
> aa
[[1]]
[1] 1

> class(aa)
[1] "list"
> bb <- test[[1]]
> class(bb)
[1] "numeric"
> is.vector(bb)
[1] TRUE
> length(bb)
[1] 1
> 