library(testthat)
library(Ricky_L)

test_check("Ricky_L")

test_that("palette", {
  expect_equal(length(ricky_colours),7)
  expect_warning(ricky_palette(direction = 1)(0), "You must select at least 1 colour.")
  expect_equal(ricky_palette(other = "grey", direction = 1)(2), c("#e0e0e2","#FAFA61"))
  expect_equal(ricky_palette(direction = 1)(6), c("#ff7aa2",
                                                  "#07a0c3",
                                                  "#ea3546",
                                                  "#FAFA61",
                                                  "#80ed99",
                                                  "#2e4057"))
  expect_equal(ricky_palette(direction = -1)(6), c("#2e4057",
                                                   "#80ed99",
                                                   "#FAFA61",
                                                   "#ea3546",
                                                   "#07a0c3",
                                                   "#ff7aa2"))
  expect_warning(ricky_palette(direction = 1)(8), "Ricky Colour Palette only has 7 colors.")
}
)

test_that("continous-scale",{
  expect_equal(length(ricky_colours),7)
  expect_error(scale_colour_ricky_seq_c("black",
                                        direction = 1,
                                        amount = 0.2), "This colour not in the package.")
}
)
