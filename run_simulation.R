simulation <- vector("list", length = length(nsim))
for (i in 1:nsim){
  simulation[[i]] <- do.call(run_sim,
                             list(N = Ns[i], 
                                  beta_curve = betas[i], 
                                  fixed_sd = sds[i], 
                                  noise = noise, 
                                  noise_param = noise_param[i],
                                  delay_treat = 7)
  )
  if (i %% (nsim/20) == 0) {
    cat(paste0(i, "/", nsim, " done", "\n"))}
}