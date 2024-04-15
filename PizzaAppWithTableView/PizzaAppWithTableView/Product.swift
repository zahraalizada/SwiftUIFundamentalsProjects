//
//  Pizza.swift
//  PizzaApp
//
//  Created by Zahra Alizada on 12.04.24.
//

import Foundation

struct Product {
    let title: String
    let description: String
    let image: String
    let price: String
}

let pizzas = [Product(title: "Mexican", description: "Pico de gallo, mozzarella, spicy lime chicken breast, red onions,avocado crema, green onions, cilantro.", image: "mexican", price: "$32"),
              Product(title: "Pepperoni", description: "Housemade marinara, part-skim mozzarella cheese, all-natural pepperoni.", image: "peperoni", price: "$36"),
              Product(title: "Napoli", description: "Housemade roasted garlic sauce, mozzarella cheese, roma tomatoes, parmesan cheese, fresh basil.", image: "napoli", price: "$33"),
              Product(title: "Tuscan Mushroom", description: "Housemade roasted garlic sauce, mozzarella cheese, cremini, shiitake, and button mushrooms, onions, feta, truffle oil, fresh thyme.", image: "tuscan", price: "$40"),
              Product(title: "Cheese", description: "Organic tomato sauce and part-skim mozzarella cheese.", image: "cheese", price: "$25")]

let souces = [Product(title: "BBQ Souce", description: "BBQ Sauce is a quintessential American classic that infuses a smoky sweetness into your meals. Crafted with a base of tomatoes, it's enriched with molasses and brown sugar, then sparked with vinegar and spices for a touch of heat. Ideal for grilling, it works wonderfully as a marinade for ribs or a glaze for grilled chicken. BBQ Sauce is your go-to for adding a rich, deep flavor that’s both robust and satisfying.", image: "barbeque", price: "$0.90"),
             Product(title: "Ranch Souce", description: "Ranch Sauce brings a creamy delight to any dish with its smooth blend of buttermilk, garlic, onion, and herbs such as dill and parsley. Perfectly balanced to enhance your favorite snacks, it serves as an excellent dip for wings, a rich topping for burgers, or a delightful dressing for salads. Its cool and tangy flavor profile makes Ranch Sauce a versatile and beloved choice.", image: "ranch", price: "$0.90"),
             Product(title: "Garlic souce", description: "Garlic Sauce is a bold, aromatic condiment that celebrates the rich and pungent flavor of garlic. Complemented by a hint of lemon and olive oil, this sauce pairs beautifully with Mediterranean dishes. It's a perfect accompaniment to grilled meats, seafood, or simply as a spread on warm bread. Embrace the zest and tang that Garlic Sauce brings to the table, transforming everyday meals into gourmet experiences.", image: "garlic", price: "$0.80"),
             Product(title: "Pizza souce", description: "Our Pizza Sauce is crafted from ripe, sun-kissed tomatoes blended with a selection of herbs and spices like oregano, basil, and garlic, offering a fresh and vibrant foundation for any pizza. Its rich, hearty flavor complements a wide range of toppings from classic cheese and pepperoni to gourmet vegetable and meat combinations. Spread it on your base for a perfect pizza that tastes like it's straight from an Italian pizzeria.", image: "pizza", price: "$0.70"),
             Product(title: "Buffalo souce", description: "Buffalo Sauce is synonymous with fiery, tangy goodness. A staple for chicken wings, this sauce combines the heat of cayenne pepper with a buttery base, finished with a hint of vinegar to round out its intense flavor. Whether you're looking to spice up your poultry or add some zest to your dips, Buffalo Sauce delivers a consistent punch of heat and flavor that's sure to ignite your taste buds.", image: "buffalo", price: "$0.70")]

let drinks = [Product(title: "Bonaqua", description: "Bonaqua is a pure, natural spring water that offers refreshment without any added flavors or compounds. It's the perfect choice for staying hydrated throughout the day.", image: "bonaqua", price: "$3"),
             Product(title: "Coca-Cola", description: "Coca-Cola is a classic, iconic soft drink known for its unique taste and refreshing quality. It pairs perfectly with meals or serves as a delightful treat on its own.", image: "cola", price: "$5"),
             Product(title: "Fanta", description: "Fanta is a burst of sweet, fruity flavor in every sip. This bright, bubbly beverage is perfect for adding a splash of joy and color to any occasion.", image: "fanta", price: "$5"),
             Product(title: "Sprite", description: "Sprite delivers a crisp, satisfying lemon-lime taste that refreshes instantly. It's a great choice for cooling down on a hot day or complementing spicy foods.", image: "sprite", price: "$5"),
             Product(title: "Fuzetea", description: "FuzeTea Lemon is a cold brew tea that combines the smooth, rich flavors of tea with a tangy lemon twist. This refreshing drink is ideal for relaxation or enjoying alongside your meals.", image: "fuzetea", price: "$4")]
