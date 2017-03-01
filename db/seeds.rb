CookingStep.destroy_all
Category.destroy_all
Recipe.destroy_all

cat1 = Category.create(name: 'maaltijd')
cat2 = Category.create(name: 'lunch')
cat3 = Category.create(name: 'snack')
cat4 = Category.create(name: 'dessert')
cat5 = Category.create(name: 'bijgerecht')
cat6 = Category.create(name: 'salade')
cat7 = Category.create(name: 'taart')
cat8 = Category.create(name: 'soep')
cat9 = Category.create(name: '1 persoons')
cat10 = Category.create(name: 'super snel')
cat11 = Category.create(name: 'vegan')
cat12 = Category.create(name: 'vegetarisch')
cat13 = Category.create(name: 'vis')
cat14 = Category.create(name: 'eieren')

recipe1 = Recipe.create(title: 'Citroentulband', subtitle: 'Citroen en yoghurt =) dubbelfris.', cooking_time: 60, intro: 'Gelukkig is deze tulband ook lekker zoet, maar niet te, je kan er best een schepje citroenjam bij eten :-)', featured: true, published: true )

cooking_step1 = CookingStep.create(description: 'Verwarm de oven voor op 175 C', recipe_id: 1)
cooking_step2 = CookingStep.create(description: 'Vet een tulbandvorm in met een beetje olie en strooi er een dun laagje bloem in, klop overtollig bloem er weer uit.', recipe_id: 1)
cooking_step3 = CookingStep.create(description: 'Meng in een kom de yoghurt met de rasp en het sap van de citroen. Roer goed door met een garde en laat het even staan.', recipe_id: 1)
cooking_step4 = CookingStep.create(description: 'Zeef in een andere kom de bloem, het bakpoeder, de baksoda en het zout en roer door elkaar.', recipe_id: 1)
cooking_step5 = CookingStep.create(description: 'Voeg de olie, ahorn siroop, en rijststroop toe aan de yoghurt en meng.', recipe_id: 1)
cooking_step6 = CookingStep.create(description: 'Meng met een garde de bloem door het yoghurtmengsel. Het beslag wordt meteen dik en begint al met reizen door het bakpoeder en het citroensap dat op elkaar reageert.', recipe_id: 1)
cooking_step7 = CookingStep.create(description: 'Spatel nu voorzichtig het beslag in de bakvorm en strijk aan de bovenkant glad.', recipe_id: 1)
cooking_step8 = CookingStep.create(description: 'Bak de cake ongeveer 40 minuten, tot de bovenkant licht goudbruin is. Laat de cake 10 minuten afkoelen in de vorm en stort hem dan op een rooster om af te koelen.', recipe_id: 1)
