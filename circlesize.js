var h = 100

var w = 595

var xspa = 30


var svg = d3.select('body').append('svg').attr('width', w).attr('height', h).attr('class','radSol');
// look at chp 7 of vizualizing data

var circs = [0,2,4,6,8,10,12,14,16,18,20]
var texts = [0,10,20,30,40,50,60,70,80,90,100]

var rscale = d3.scale.linear()

svg.selectAll('.circles').data(circs)
.enter()
.append('circle')

.attr('r', function(d){
  return d
})
.attr('class','circles')
.attr('cy', h/2)
.attr('cx',function(d,i){
//  console.log(i)
  return 20+ 40 *i
})


svg.selectAll('text')
.data(circs).enter().append('text')
.text(texts)
.attr('font-size', 10)
.attr('fill', 'black')
.attr('x', function(d,i){
  return 20 +40*i
})
.attr('y', h/5)
.attr('text-anchor', 'middle')

d3.select('body').append('html:br')
