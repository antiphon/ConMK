# Test case with constant cell

devtools::load_all()

x <- (ss <- readRDS("test_stacks2.rds"))$trend


# one pixel constant
x[1200+30] <- x[1200 + 30] * 0 + 100

#
r <- contextual_mann_kendall(x)
plot(r)
