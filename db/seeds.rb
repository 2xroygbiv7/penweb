colors = Color.create([
  { code: "a", name: "black" },
  { code: "b", name: "red" },
  { code: "c", name: "blue" },
  { code: "d", name: "green" },
  { code: "v", name: "violet" }
])
  
puts "#{Color.all.length} colors created"

categories = Category.create([
  { name: "energel" },
  { name: "ballpoint" },
  { name: "permanent marker" },
  { name: "mechanical pencil" },
  { name: "brush pen" },
  { name: "whiteboard marker" },
  { name: "gift collection" }
])
  
puts "#{Category.all.length} colors created"

Product.create([
  { code: "BL407",  name: "EnerGel Metallic",     color_ids: [colors[0].id, colors[1].id], category_ids: [categories[categories.index{|cat| cat[:name] == "energel"}].id, categories[categories.index{|cat| cat[:name] == "gift collection"}].id] },
  { code: "BK130",  name: ".e-ball",              color_ids: [colors[1].id, colors[2].id], category_ids: [categories[categories.index{|cat| cat[:name] == "ballpoint"}].id] },
  { code: "N50",    name: "Pentel Pen",           color_ids: [colors[2].id, colors[3].id], category_ids: [categories[categories.index{|cat| cat[:name] == "permanent marker"}].id] },
  { code: "MWL5",   name: "Maxiflo Medium Point", color_ids: [colors[3].id, colors[4].id], category_ids: [categories[categories.index{|cat| cat[:name] == "whiteboard marker"}].id] },
  { code: "PD105T", name: "Techniclick",          color_ids: [colors[4].id, colors[0].id], category_ids: [categories[categories.index{|cat| cat[:name] == "mechanical pencil"}].id] },
  { code: "GFKP3", name: "Pocket Brush",          color_ids: [colors[1].id],               category_ids: [categories[categories.index{|cat| cat[:name] == "brush pen"}].id] }
])

puts "#{Product.all.length} products created"