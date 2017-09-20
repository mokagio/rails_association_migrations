user = User.create(name: 'Luke')
User.create(name: 'Leia')
User.create(name: 'Han')

item1 = Item.create(description: 'item no. 1')
item2 = Item.create(description: 'item no. 2')
item3 = Item.create(description: 'item no. 3')
item4 = Item.create(description: 'item no. 4')

Favourite.create(name: 'fave 1', user: user, item: item1)
Favourite.create(name: 'fave 2', user: user, item: item2)
