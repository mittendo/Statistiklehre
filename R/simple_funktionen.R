addiere <- function (x, y) {
  x+y
}

fibo <- function(n,a=1,b=1){
  if (n == 1) return(a)
  if (n == 2) return(b)
  return(fibo(n-1,b,a+b))
} 