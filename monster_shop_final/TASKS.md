# Project Tasks

## Set up

- [x] Check Gemfile
- [x] Run Bundle install and Bundle update
- [x] Run Rails db:reset OR rails db:{drop, create, migrate}
- [x] Run Rspec and verify that tests are passing (there should be only )
- [x] Breakdown project into stories

## Stories

### Discount Model - Validations

- [x] Validation test
- [x] Discount model validates :name, :discount_percentage, :minimum_quantity
- [x] Create table
- [x] Run db:migrate

### Associations - Story 1

#### Merchant/Discount association

- [x] Merchant/Discount Associations tests
  - [x] Discount belongs to merchant
    - [x] Create discount's 'merchant_id' foreign key
  - [x] merchant has_many discounts

### Associations - Story 2

#### Item/Discount association

- [x] Item/Discount Associations test.
  - [x] Discount has_many items THROUGH merchant
  - [x] item has 'discount_id' foreign key

### Story 1

#### Create

- [x] Can create a 'bulk' discount for the shop products. New action/view
  - [x] In the Merchant's Dashboard there is a link to a form to create new item
    - [x] Create feature test
  - [x] There is a form to create new discount
  - [x] It creates a new discount

#### Story 1.1

- [x] Merchant can have multiple discounts. Database

#### Story 1.2

- [] Merchant shop's discounts only apply to merchant's items ONCE they reach a certain quantity of the same item in the same cart/order
- [] Merchant shop's discounts only apply to merchant's items

### Story 2

#### Read

- [x] Merchant can access discount show page through link in dashboard
- [x] Merchant has a discount index page in his shop. Show action/view
  - [x] Can see a list of existing discounts for the shop.
    - [x] Discount 'Name'
    - [x] Discount 'discount_percentage'
    - [x] Discount 'minimum_quantity'

### Story 3
- [x]
#### Update

- [x] Merchant can update discounts. Test #update
- [x] Create Feature tests
- [] Access form via discounts index where there is an 'Edit' link.
- [x] Edit action in the controller
- [x] There is an Edit View page
- [x] There is an Edit form
- [x] User can update the discount info via the form
- [x] User is redirected to discounts index page after submitting changes.

### Story 4

#### Delete

- [x] Can delete discounts. Destroy action

### Story 5

- [x] When a user adds enough value or quantity of a single item to their cart, the bulk discount will automatically show up on the cart page.
  - [x] Discount ONLY applies when item quantity is met with the SAME item.
  - [x] When there is a conflict between two discounts, the greater of the two will be applied
  - [x] Discount DOESN'T applies when items are DIFFERENT.

### Story 6

- [x] Discount shows in the cart page
- [x] Final discounted prices should appear on the orders show page

### Story 7

- [x] A bulk discount from one merchant will only affect items from that merchant in the cart.

## Notes

Cart:

- I can see the Merchant
- I can see the Item
- @contents shows me the 'id' and the quantity of it in the cart
- I can access the discounts:
  Item.find(item_id).merchant.discounts
- I can obtain a discount value:
  discount_value = Item.find(item_id).merchant.discounts.first.discount_percentage


  1. Is there a discount for this item?
  2. #count_of(item_id) == discount.minimum_quantity?
  3. subtotal_of(item_id) * discount_value

  Methods:

  1. #check_for_item_discounts(item_id)

    ``` ruby
    Item.find(item_id).merchant.discounts
    ```

  1. #match_by_discount_criteria(item_id)

    discounts = Item.find(item_id).merchant.discounts
    #=> returns collection of associations that act like an array

    discounts.select(:minimum_quantity).find_by(minimum_quantity: @contents[item_id.to_s]).minimum_quantity
    #=> returns an integer


  1. #discount_value(item_id)

  ``` ruby
  def discount_value(item_id)
    if match_by_discount_criteria(item_id)
      match_by_discount_criteria(item_id).discount_percentage
    end
  end
  ```

  All of this materializes inside #subtotal_of(item_id)

  price = unless discount_value(item_id).nil?
    Item.find(item_id).price * discount_value(item_id)
    else
    Item.find(item_id).price
  end

### Issue 1

when the discount criteria is not met then
match_by_discount_criteria(item_id) returns
nil.

matcher:
if not nil and it matches then retun the discount object, else return a string "no discount"

discount value: 
if matcher = "no discount"
return 1
else return 
extracted value
end

### Issue! 2

Discounts.select(:minimum_quantity).find_by('minimum_quantity <= ?', total).minimum_quantity

### Issue 3

* Discount shows in cart but not in the order page.
* Item price is not changed in the view

-----
When orders_controller create action iterates over the cart items
(cart.items) retrieves the item price.

I need to update the item's price in cart.items

``` ruby
[5] pry(#<Cart>)> cart_items[0].price
=> 20.0
[6] pry(#<Cart>)> cart_items[0][:price] = 15
=> 15
[7] pry(#<Cart>)> cart_items[0].price
=> 15.0
```

This worked:

``` ruby
updated = cart_items.each {|item| item[:price] = item[:price] * discount_value(item[:id])}
```
