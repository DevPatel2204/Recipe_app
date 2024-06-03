//
//  RecipeModel.swift
//  Recipe_app
//
//  Created by Dev Patel on 30/05/24.
//

import Foundation

//enum category: String {
//    case breakfast = "Breakfast"
//    case soup = "Soup"
//    case salad = "Salad"
//    case appetizer = "Appetizer"
//    case main = "Main"
//    case side = "Side"
//    case dessert = "Dessert"
//    case snack = "Snack"
//    case drink = "Drink"
//}

struct Recipe:Identifiable{
    let id = UUID()
    let name : String
    let image : String
    let description : String
    let ingredients : String
    let directions : String
    //let category : Category.RawValue
    let datepublished : String
    let url : String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
        name: "Spaghetti Carbonara",
            
      image:"https://s23209.pcdn.co/wp-content/uploads/2014/03/IMG_2622edit.jpg",
            
        description: "Spaghetti Carbonara is a classic Italian pasta dish made with eggs, cheese, bacon or pancetta, and black pepper. It's creamy, rich, and incredibly flavorful.",
            
        ingredients: "200g spaghetti 100g pancetta or bacon, diced 2 large eggs 50g grated Parmesan cheese Freshly ground black pepper",
            
        directions: "Cook the spaghetti according to package instructions until al dente. In a skillet, cook the diced pancetta or bacon until crispy. Set aside. In a bowl, whisk together the eggs, grated Parmesan cheese, and a generous amount of freshly ground black pepper. Once the spaghetti is cooked, drain it and return it to the pot. Immediately add the cooked pancetta or bacon and the egg mixture. Toss everything together until the spaghetti is coated in the creamy sauce. Serve hot, garnished with extra Parmesan cheese and black pepper.",

            
        //category: "main",
            
        datepublished:"May 15, 2023",
            
        url: "https://damndelicious.net/2014/03/29/spaghetti-carbonara/"
            ),
        Recipe(
        name: "Chicken Tikka Masala",
            
        image:"https://s23209.pcdn.co/wp-content/uploads/2019/02/Easy-Chicken-Tikka-MasalaIMG_8253.jpg",
            
        description: ": Chicken Tikka Masala is a popular Indian curry dish consisting of marinated and grilled chicken pieces in a creamy tomato-based sauce. It's mildly spicy and packed with flavor.",
            
        ingredients: "500g boneless, skinless chicken breasts, cut into bite-sized pieces 1 cup plain yogurt 3 tablespoons Tikka Masala spice blend 2 tablespoons vegetable oil 1 onion, finely chopped 2 cloves garlic, minced 1-inch piece of ginger, grated 1 can (400g) diced tomatoes 1 cup heavy cream Salt and pepper to taste",
            
        directions: "In a bowl, mix together the yogurt and Tikka Masala spice blend. Add the chicken pieces and toss to coat. Marinate in the refrigerator for at least 1 hour, or overnight for best results. Heat the vegetable oil in a large skillet over medium-high heat. Add the marinated chicken pieces and cook until browned on all sides. Remove from the skillet and set aside. In the same skillet, add the chopped onion, garlic, and ginger. Cook until softened and fragrant. Add the diced tomatoes to the skillet and cook for a few minutes, breaking them up with a spoon. Return the cooked chicken pieces to the skillet. Stir in the heavy cream and simmer for 10-15 minutes, until the sauce has thickened. Season with salt and pepper to taste. Serve hot with rice or naan bread..",

            
        //category: "Main",
            
        datepublished:"June 20, 2023",
            
        url: "https://pinchofyum.com/chicken-tikka-masala"
            ),
        Recipe(
        name: "Caesar Salad",
            
        image:"https://s23209.pcdn.co/wp-content/uploads/2023/01/220905_DD_Chx-Caesar-Salad_051.jpg",
        
        description: "Caesar Salad is a classic salad made with romaine lettuce, croutons, Parmesan cheese, and a creamy Caesar dressing. It's simple, refreshing, and full of flavor.",
        
        ingredients: "1 head romaine lettuce, chopped 1 cup croutons 1/2 cup grated Parmesan cheese Caesar dressing (store-bought or homemade)",
            
        directions: "In a large bowl, combine the chopped romaine lettuce, croutons, and grated Parmesan cheese. Drizzle the Caesar dressing over the salad and toss until everything is evenly coated. Serve immediately as a side dish or add grilled chicken or shrimp for a complete meal.",
            
        //category: "Salad",
            
        datepublished:"April 5, 2023",
            
        url: "https://www.loveandlemons.com/caesar-salad/"
        ),
        
        Recipe(
        name: "Chocolate Chip Cookies",
            
        image:"https://s23209.pcdn.co/wp-content/uploads/2013/02/IMG_9795-copy.jpg",
        description: "Chocolate Chip Cookies are classic American treats made with butter, sugar, flour, chocolate chips, and vanilla extract. They're soft, chewy, and loaded with gooey chocolate chips.",
        
        ingredients: "1 cup (2 sticks) unsalted butter, softened 3/4 cup granulated sugar 3/4 cup packed brown sugar 2 large eggs 1 teaspoon vanilla extract 2 1/4 cups all-purpose flour 1 teaspoon baking soda 1/2 teaspoon salt 2 cups semisweet chocolate chips",
            
        directions: "Preheat the oven to 375°F (190°C). Line a baking sheet with parchment paper. In a large bowl, cream together the softened butter, granulated sugar, and brown sugar until light and fluffy. Beat in the eggs, one at a time",
            
        //category: "Dessert",
            
        datepublished:"March 21, 2023",
            
        url: "https://pinchofyum.com/the-best-soft-chocolate-chip-cookies"
        ),
        
        Recipe(
        name: "Long Island Iced Tea",
            
        image:"https://www.liquor.com/thmb/7Bi4L89NHaRukKizwarA5Jr178I=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__liquor__2019__03__14090749__Long-Island-Iced-Tea-720x720-article-272623f47e80457594178a552f708068.jpg",
        
        description:"The Long Island Iced Tea was popularized in the 1970s and remains a beloved drink. It’s possible the cocktail was born out of Prohibition, when thirsty scofflaws wanted to disguise their booze. It’s also possible the drink sprung up in the ’70s at a bar in Long Island, or maybe at a TGI Friday’s. This much is known: You still can’t throw a lemon wedge inside the chain restaurant without knocking one over..",
        
        ingredients: "3/4 ounce vodka 3/4 ounce white rum 3/4 ounce silver tequila 3/4 ounce gin 3/4 ounce triple sec 3/4 ounce simple syrup 3/4 ounce lemon juice, freshly squeezed Cola, to top Garnish: lemon wedge",
        
        directions:"Add the vodka, rum, tequila, gin, triple sec, simple syrup and lemon juice to a Collins glass filled with ice. Top with a splash of the cola and stir briefly. Garnish with a lemon wedge. Serve with a straw.",
            
        //category: "Dessert",
            
        datepublished:"April 21, 2022",
            
        url: "https://www.liquor.com/recipes/long-island-iced-tea/"
        ),
        
    ]
}
