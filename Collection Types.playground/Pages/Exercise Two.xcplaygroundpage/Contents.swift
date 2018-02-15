/*:
 [Previous](@previous)
 
 # Exercise Two
 
 A restaurant asks diners to rate their dining experience on a scale of 1 to 100, where 1 is "very bad", and 100 is "perfection".
 
 1. Create an empty mutable array of type `Double` named `restaurantRatings`:
 
 */

import Foundation
var restaurantRating : [Double] = []
for _ in 1...20 {
    restaurantRating.append(Double( arc4random_uniform(99) + 1 ))
}


/*:
 3. Determine the average rating. Remember, calculate an average by finding the sum of all the values, then dividing by the number of values.
 */
var total = 0.0
for rating in restaurantRating {
    print(rating)
    total += rating
}
total /= 20
print(total)
/*:
 4. The restaurant is most concerned with how many diners considered their meal to be less than satisfactory. Calculate the percentage of diners who gave the restaurant a rating less than 80.
 */
var highest = 80.0
var ratingCount = 0.0
for rating in restaurantRating {
    if rating < highest {
        ratingCount += 1
    }
}
(ratingCount / 20) * 100
print(ratingCount)

/*:
 5. The manager wants more detail. Prepare a report that indicates how many diners found the restuarant "Very Bad" (0 to 25), "Bad" (25 to 49), "Fair" (50 to 79), "Satisfactory" (80 to 89), and "Stellar" (90 to 100).
 */



