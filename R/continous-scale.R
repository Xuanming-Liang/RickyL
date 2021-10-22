

scale_colour_ricky_seq_c <- function(name, direction = 1, amount = 0.2, ...) {
  if(!name %in% names(ricky_colours)) stop ("This colour not in the package.")

  if(name %in% names(ricky_colours)){
    if(direction >= 0){
     low <- colorspace::lighten(ricky_colours[name],0)
     high <- colorspace::lighten(ricky_colours[name],amount)
   }
    else {
      high <- colorspace::lighten(ricky_colours[name],0)
      low <- colorspace::lighten(ricky_colours[name],amount)
  }

}
  ggplot2::scale_color_gradient(
    low = low,
    high = high,
    ...
  )

}

