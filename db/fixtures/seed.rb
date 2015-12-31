Organization.seed(:id,
                  {id: 1 , name: 'BMW'    , public_name: 'Flexible BMW'    , organization_type: "Show room" , pricing_policy: "Flexible"} ,
                  {id: 2 , name: 'Audi'   , public_name: 'Fixed Audi'      , organization_type: "Service"   , pricing_policy: "Fixed"}    ,
                  {id: 3 , name: 'Toyota' , public_name: 'Prestige Toyota' , organization_type: "Dealer"    , pricing_policy: "Prestige"} ,
                 )

Organization.all.each do |org|
  3.times do |i|
    id = (org.id * 10 + i)
    Model.seed(:id , {id: id, name: "Car #{id}" , model_slug: "c#{id}" , organization_id: org.id})
  end
end

Model.all.each do |m|
  3.times do |i|
    id = (m.id * 10 + i)
    ModelType.seed(:id , {id: id, name: "Car Type #{m.id}-#{id}" , model_type_slug: "cmt#{id}", model_type_code: "MTC:#{id}", model_id: m.id, base_price: id * 100})
  end
end
