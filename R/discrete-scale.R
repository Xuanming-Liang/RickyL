

scale_colour_ricky_d <- function(direction = 1, primary = "yellow",
                                other = "green",...) {
  ggplot2::discrete_scale( "colour", "ricky",
                           ricky_palette(primary, other, direction),
    ...
  )
}

scale_fill_ricky_d <- function(direction = 1, primary = "blue",
                               other = "green",...) {
  ggplot2::discrete_scale( "fill", "ricky",
                           ricky_palette(primary, other, direction),
    ...
  )
}
