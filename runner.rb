require 'unirest'

# response = Unirest.get("http://localhost:3000/api/products")
# puts JSON.pretty_generate(response.body)

# response = Unirest.post("http://localhost:3000/api/products/", parameters: {
#                                                                             name: "Heated chalk bag",
#                                                                             price: 60
#                                                                             img_url: "https://www.blackdiamondequipment.com/on/demandware.static/-/Sites-bdel/default/dw57580d3c/products/S18_Product_Images/Equipment/BDE_Glam_Hotforged.jpg",
#                                                                             description: "The ultimate for cold cragging days or for climbers who suffer from cold hands, the limited edition Hot Forge Heated Chalk Bag’s innovative 3-level heating system lets you dial in the exact level of warmth for any condition."

#                                                                             }


                        # )
product.id = 2
response = Unirest.delete("http://localhost:3000/api/products/#{product.id}") 
data = response.body
puts JSON.pretty_generate(data)