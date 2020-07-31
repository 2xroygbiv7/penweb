colors = Color.create([
  { code: "a", name: "black" },
  { code: "b", name: "red" },
  { code: "c", name: "blue" },
  { code: "d", name: "green" },
  { code: "v", name: "violet" }
])
  
puts "#{Color.all.length} colors created"

Product.create([
  { code: "BL207",  name: "EnerGel Metallic",       color_ids: [colors[0].id] },
  { code: "BK130",  name: ".e-ball",                color_ids: [colors[1].id] },
  { code: "N50",    name: "Pentel Pen",             color_ids: [colors[2].id] },
  { code: "MWL5",   name: "Maxiflo Medium Point",   color_ids: [colors[3].id] },
  { code: "PD105T", name: "Techniclick",            color_ids: [colors[4].id] }
])

puts "#{Product.all.length} products created"