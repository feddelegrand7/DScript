
plainBar <- function(data,
                     color = "crimson",
                     bgColor = "#FFFFFF",
                     strokeColor = "purple",
                     strokeWidth = 2,
                     barPadding = 0.1,
                     sort = "none",
                     width = NULL,
                     height = NULL
                    ) {



  r2d3::r2d3(
    data = data,
    script = system.file("d3/barcharts/barchartPlain.js", package = "DScript"),
    width = width,
    height = height,
    options = list(
      color = color,
      barPadding = barPadding,
      bgColor = bgColor,
      strokeColor = strokeColor,
      strokeWidth = strokeWidth,
      sort = sort
      )
  )
}
