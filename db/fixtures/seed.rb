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
