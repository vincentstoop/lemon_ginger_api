# Lemon & Ginger API
API for iPhone Recipes app, with a CMS and small website, built in [Rails 5.1.0.beta1](https://rubygems.org/gems/rails/versions/5.1.0.beta1)

## Database Structure
1. Category
  * name:string

2. Recipe
  * title:string
  * subtitle:string
  * cooking_time:integer
  * intro:text
  * featured:boolean
  * published:boolean
  * week_recipe:boolean
  * persons:integer
  * admin:references

3. jointable categories_recipes
  * category_id:integer
  * recipe_id:integer

4. CookingStep
  * title:string
  * cooking_time:integer
  * description:text
  * recipe:references

5. Product
  * name:string
  * description:text

6. Ingredient
  * amount:string
  * optional:boolean
  * recipe:references
  * product:references

7. jointable ingredients_recipes (Unused)
  * recipe:references
  * ingredient:references

8. Photo
  * image:string
  * recipe:references

9. Devise Admin model

10. Devise User model

11. jointable recipes_users
  * recipe:references
  * user:references

## Running Locally
Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:vincentstoop/lemon_ginger_api.git
cd ut-tulpje
bundle install
rails db:create db:migrate db:seed
rails server
```
