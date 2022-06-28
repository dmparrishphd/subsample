resample <- function ( n , k ) {
    stopifnot (
        is.numeric ( n ) ,
        is.numeric ( k ) ,
        length ( n ) == 1L ,
        length ( k ) == 1L ,
        n == floor ( n ) , 
        k == floor ( k ) ,
        0 < k ,
        k <= n )
    rank ( runif ( n ) , ties.method = "first" ) [ 1 : k ] }
