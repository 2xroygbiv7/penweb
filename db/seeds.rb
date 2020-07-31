product_list = [
  ["BL207","EnerGel Metallic"],
  ["BK130",".e-ball"],
  ["N50","Pentel Pen"],
  ["MWL5"],["Maxiflo Medium Point"],
  ["PD105T","Techniclick"]
]

product_list.each do |code, name|
  Product.create!(
    code: code,
    name: name
  )
end

puts "#{Product.all.length} products created"