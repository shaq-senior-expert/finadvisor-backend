# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

User.destroy_all
Transaction.destroy_all
Category.destroy_all
Bill.destroy_all
Budget.destroy_all

nashat = User.create(email: "test@gmail.com", first_name: "Mr. Fake", last_name: "User", password: "123456")

gas = Category.create(name: "Gas")
phone = Category.create(name: "Phone bill")
home = Category.create(name: "Home")
food = Category.create(name: "Food")
insurance = Category.create(name: "Health and Insurance")
transport = Category.create(name: "Transportation")
expenses = Category.create(name: "Subscriptions and Expenses")
material_goods = Category.create(name: "Material Goods")
venmo = Category.create(name: "Venmo")
interest = Category.create(name: "Interest")
misc = Category.create(name: "Misc")
paycheck = Category.create(name: "Paycheck")
deposit = Category.create(name: "Deposit")
other = Category.create(name: "Other Income")


# january

# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 1000, deposit: true, description: "Paycheck", user_id: nashat.id, category_id: paycheck.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 1000, deposit: true,description: "Deposit ", user_id: nashat.id, category_id: deposit.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 1000, deposit: true,description: "Gift ", user_id: nashat.id, category_id: other.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 1000, deposit: true,description: "Income from stock", user_id: nashat.id, category_id: other.id)

# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 1000, description: "Home rent", user_id: nashat.id, category_id: home.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 300, description: "food", user_id: nashat.id, category_id: food.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 200, description: "health insurance", user_id: nashat.id, category_id: insurance.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 100, description: "Transportation", user_id: nashat.id, category_id: transport.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 100, description: "Material Goods", user_id: nashat.id, category_id: material_goods.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 100, description: "Venmo", user_id: nashat.id, category_id: venmo.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 180, description: "Interest", user_id: nashat.id, category_id: interest.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 140, description: "Misc", user_id: nashat.id, category_id: misc.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 120, description: "Phone bill", user_id: nashat.id, category_id: phone.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 100, description: "Material Goods", user_id: nashat.id, category_id: material_goods.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 100, description: "Venmo", user_id: nashat.id, category_id: venmo.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 180, description: "Interest", user_id: nashat.id, category_id: interest.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 140, description: "Misc", user_id: nashat.id, category_id: misc.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 120, description: "Phone bill", user_id: nashat.id, category_id: phone.id)
# Transaction.create(date: Time.new(2021,1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)


# December

# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 1000, deposit: true, description: "Paycheck", user_id: nashat.id, category_id: paycheck.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 1000, deposit: true,description: "Deposit ", user_id: nashat.id, category_id: deposit.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 1000, deposit: true,description: "Gift ", user_id: nashat.id, category_id: other.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 1000, deposit: true,description: "Income from stock", user_id: nashat.id, category_id: other.id)

# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 1000, description: "Home rent", user_id: nashat.id, category_id: home.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 300, description: "food", user_id: nashat.id, category_id: food.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 200, description: "health insurance", user_id: nashat.id, category_id: insurance.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 100, description: "Transportation", user_id: nashat.id, category_id: transport.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 100, description: "Material Goods", user_id: nashat.id, category_id: material_goods.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 100, description: "Venmo", user_id: nashat.id, category_id: venmo.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 180, description: "Interest", user_id: nashat.id, category_id: interest.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 140, description: "Misc", user_id: nashat.id, category_id: misc.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 120, description: "Phone bill", user_id: nashat.id, category_id: phone.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 100, description: "Material Goods", user_id: nashat.id, category_id: material_goods.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 100, description: "Venmo", user_id: nashat.id, category_id: venmo.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 180, description: "Interest", user_id: nashat.id, category_id: interest.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 140, description: "Misc", user_id: nashat.id, category_id: misc.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 120, description: "Phone bill", user_id: nashat.id, category_id: phone.id)
# Transaction.create(date: Time.new(2020,12,rand(1..20)).to_date, amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)

6.times do |i|
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 1000, deposit: true, description: "Paycheck", user_id: nashat.id, category_id: paycheck.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 1000, deposit: true,description: "Deposit ", user_id: nashat.id, category_id: deposit.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 1000, deposit: true,description: "Gift ", user_id: nashat.id, category_id: other.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 1000, deposit: true,description: "Income from stock", user_id: nashat.id, category_id: other.id)
    
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 1000, description: "Home rent", user_id: nashat.id, category_id: home.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 300, description: "food", user_id: nashat.id, category_id: food.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 200, description: "health insurance", user_id: nashat.id, category_id: insurance.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 100, description: "Transportation", user_id: nashat.id, category_id: transport.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 100, description: "Material Goods", user_id: nashat.id, category_id: material_goods.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 100, description: "Venmo", user_id: nashat.id, category_id: venmo.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 180, description: "Interest", user_id: nashat.id, category_id: interest.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 140, description: "Misc", user_id: nashat.id, category_id: misc.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 120, description: "Phone bill", user_id: nashat.id, category_id: phone.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 100, description: "Material Goods", user_id: nashat.id, category_id: material_goods.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 100, description: "Venmo", user_id: nashat.id, category_id: venmo.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 180, description: "Interest", user_id: nashat.id, category_id: interest.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 140, description: "Misc", user_id: nashat.id, category_id: misc.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 120, description: "Phone bill", user_id: nashat.id, category_id: phone.id)
    Transaction.create(date: Time.new(2021,i+1,rand(1..20)), amount: 10, description: "gas", user_id: nashat.id, category_id: gas.id)
    
end

bill = Bill.new(date: Time.now, amount: 10)
bill.user = nashat
bill.category = insurance
bill.save

budget = Budget.new(max: 100, month: "Jan", year: 2021)
budget.user = nashat
budget.category = gas
budget.save
