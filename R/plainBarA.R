
plainBarA <- function(data,
                     color = "crimson",
                     width = NULL,
                     height = NULL,
                     barPadding = 0.1,
                     bgColor = "#FFFFFF") {



  r2d3::r2d3(
    data = data,
    script = system.file("d3/barcharts/barchartPlainA.js", package = "DScript"),
    width = width,
    height = height,
    options = list(
      color = color,
      barPadding = barPadding,
      bgColor = bgColor
    )
  )
}
