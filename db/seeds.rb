# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Coin.create!(
  description: "Bitcoin",
  acronym: "bitcoin",
  url_image: "https://media.istockphoto.com/illustrations/bitcoin-symbol-illustration-logo-the-crtyptocurrency-bitcoin-is-illustration-id905413264?s=612x612"
)

Coin.create!(
  description: "Ethereum",
  acronym: "ETH",
  url_image: "https://media.istockphoto.com/illustrations/bitcoin-symbol-illustration-logo-the-crtyptocurrency-bitcoin-is-illustration-id905413264?s=612x612"
)

Coin.create!(
  description: "Dash",
  acronym: "Dash",
  url_image: "https://media.dash.org/wp-content/uploads/dash-d.svg"
)