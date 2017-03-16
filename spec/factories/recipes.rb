FactoryGirl.define do
  factory :recipe do
    title         'Lekkere cake'
    cooking_time  45
    categories    [Category.new(name: 'lekker', id: 1)]
    persons       4
    id            330
  end
end
