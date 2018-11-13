# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


joe = User.create(username: 'joe123')
eric = User.create(username: 'eric456')
adi2 = User.create(username: 'ad2')

mona_lisa = Artwork.create(title: 'Mona Lisa', image_url: 'mona.lisa', artist_id: 1)
screamer = Artwork.create(title: 'Screaming Pikachu', image_url: 'scream.pikachu', artist_id: 2)

share1 = ArtworkShare.create(artwork_id: 1, viewer_id: 2)
share2 = ArtworkShare.create(artwork_id: 2, viewer_id: 3)
