test_that("Infeasible inputs generate null designs (continuous)", {
  # Zero sample size
  expect_true(all(is.na(opt_pc_cont(n = 0, rho_0 = 0.5, rho_1 = 0.7, sigma = 0.7,
                                alpha_nom = 0.05, beta_nom = 0.2)[1:3])))
  # Null larger than alternative
  expect_true(all(is.na(opt_pc_cont(n = 100, rho_0 = 0.75, rho_1 = 0.7, sigma = 0.7,
                                alpha_nom = 0.05, beta_nom = 0.2)[1:3])))
  # 0 nominal alpha
  expect_true(all(is.na(opt_pc_cont(n = 100, rho_0 = 0.5, rho_1 = 0.7, sigma = 0.7,
                                alpha_nom = 0, beta_nom = 0.2)[1:3])))
  # 0 nominal beta
  expect_true(all(is.na(opt_pc_cont(n = 100, rho_0 = 0.5, rho_1 = 0.7, sigma = 0.7,
                                alpha_nom = 0.05, beta_nom = 0)[1:3])))
})