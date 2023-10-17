# one.sim: simulate one dataset from the drug model
# inputs:
#       - n: per group sample size
#       - mu.drug = 2: mean for drug treatment group
#       - mu.nodrug = runif(1): mean for no drug treament group
# output: a length two list with the observations 
#         for the two groups named 
#         x.drug and x.nodrug

one.sim <- function(n, mu.drug = 2, mu.nodrug = runif(1)){
  
  x.drug <- rexp(n, rate = 1/mu.drug)
  x.nodrug <- rexp(n, rate = 1/mu.nodrug)
  
  return(list(
    x.drug = x.drug,
    x.nodrug = x.nodrug
  ))
  
}

# rep.sim: repeated simulation from the drug model
# inputs:
#       - nreps: number of repetitions of the simulation
#       - n: per group sample size
#       - mu.drug = 2: mean for drug treatment group
#       - mu.nodrug = runif(1): mean for no drug treament group
#       - seed = NULL: optional seed for reproducibility
# output: 

rep.sim <- function(nreps, n, mu.drug = 2, mu.nodrug = runif(1),
                    seed = NULL){
  
  sim.objs <- list()
  
  for(i in 1:nreps){
    
    sim.objs[[i]] <- one.sim(n = n, mu.drug = mu.drug,
                             mu.nodrug = mu.nodrug)
    
  }
  
}



















