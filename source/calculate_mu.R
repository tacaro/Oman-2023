#' @param a assimilation efficiency as value 0 - 1
#' @param F2 F of biomass at time 2
#' @param F1 F of biomass at time 1
#' @param FL F of label 
#' @param t2 time 2
#' @param t1 time 1
#' @return growth rate µ in units of t^-1

calculate_mu <- function(a, F2, F1, FL, t2, t1 = 0) {
  
  F2 = if_else(F2 > FL,
          true = FL,
          false = F2)
  
  F2 = if_else(F2 <= 0,
               true = 0,
               false = F2)
  
  mu = - (1/(t2 - t1)) * (log((a * FL - F2)/(a*FL - F1)))
  return(mu)
}