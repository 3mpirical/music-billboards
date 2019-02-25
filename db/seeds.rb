# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Billboard.destroy_all()
Artist.destroy_all()


Billboard.create(
    name: "TOP 100"
)
Billboard.create(
    name: "TOP 70s"
)
Billboard.create(
    name: "TOP 80s"
)
Billboard.create(
    name: "TOP 90s"
)
Billboard.create(
    name: "TOP 200"
)
Billboard.create(
    name: "TOP 50"
)
Billboard.create(
    name: "BOTTOM 100"
)
Billboard.create(
    name: "MOST INCLUSIVE"
)
Billboard.create(
    name: "BIGGEST HITS"
)
Billboard.create(
    name: "FAN FAVORITES"
)
Billboard.create(
    name: "MOST VIEWED"
)

Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Nuns And Roses",
    started: "1945"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "The Beagles",
    started: "1975"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Katy Prairie",
    started: "2004"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Aluminum Zepplin",
    started: "1965"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Britney Shears",
    started: "1995"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Mariah Scary",
    started: "1998"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Daft Skunk",
    started: "1985"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Tyra Spanks",
    started: "1993"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Justin Tinderlake",
    started: "1997"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Ellie Scolding",
    started: "20010"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Demi Tomato",
    started: "2007"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Kanye Zest",
    started: "1998"
)

Artist.all().each() {|artist|
    for i in (1..15)
        Song.create(
            name: Faker::Music.album,
            length: "2 mins",
            artist_id: artist.id
        )
    end
}

Billboard.all().each() {|billboard|
    Song.all().each() { |song|
        if(Random.rand(4).to_i == 0)
            SongSlot.create(
                billboard_id: billboard.id,
                song_id: song.id,
            )
        end
    }
}

Billboard.all().each() { |billboard|
    puts billboard.name + "-----------"
    billboard.songs.each() {|song|
        puts song.name
    }
}

