pie_recipe = Recipe.create(name: "Yummy Pie")
eggs_recipe = Recipe.create(name: "Yucky Eggs")
meat_pie_recipe = Recipe.create(name: "Meat Pie")
asian_salad_recipe = Recipe.create(name: "Asian Salad")
pho_recipe = Recipe.create(name: "Pho")
brussels_recipe = Recipe.create(name: "Roasted Brussels Sprouts")

Comment.create(contents: 'LOL', recipe_id: pie_recipe.id)
Comment.create(contents: 'click here for a free iPad!', recipe_id: eggs_recipe.id)

Comment.create(contents: 'great analysis!!!', recipe_id: meat_pie_recipe.id)
Comment.create(contents: 'ruby is so 2010, Go is the future', recipe_id: asian_salad_recipe.id)
Comment.create(contents: 'i like ice cream', recipe_id: pho_recipe.id)
Comment.create(contents: 'i like brussels sprouts', recipe_id: brussels_recipe.id)

Recipe.all

Comment.all

Recipe.last
or
Recipe.order('created_at').last

recipe = Recipe.last
recipe.comments

Comment.last
or
Comment.order('created_at').last

comment = Comment.last
comment.recipes

recipe = Comment.where(contents: '%brussels%')
