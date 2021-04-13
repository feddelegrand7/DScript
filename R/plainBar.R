
plainBar <- function(data,
                     color = "orange",
                     width = NULL,
                     height = NULL,
                     barPadding = 0.1,
                     bgColor = "#FFFFFF") {



  r2d3::r2d3(
    data = data,
    script = system.file("d3/barcharts/barchartPlain.js", package = "DScript"),
    width = width,
    height = height,
    options = list(
      color = color,
      barPadding = barPadding,
      bgColor = bgColor
      )
  )
}
