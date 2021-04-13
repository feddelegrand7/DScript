let xScale = d3
  .scaleBand()
  .domain(d3.range(data.length))
  .rangeRound([0, width])
  .paddingInner(options.barPadding);

let yScale = d3
  .scaleLinear()
  .domain([0, d3.max(data)])
  .rangeRound([0, height])
  .clamp(true);

svg.style('background-color', options.bgColor)
  .selectAll("rect")
  .data(data)
  .enter()
  .append("rect")
  .sort((a,b) => d3.ascending(a, b))
  .attr("x", (d, i) => xScale(i))
  .attr("y", (d) => height - yScale(d))
  .attr("width", xScale.bandwidth())
  .attr("height", (d) => yScale(d))
  .attr("fill", options.color)
  .attr("stroke", "darkred");


