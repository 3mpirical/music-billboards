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
    name: "TOP EXAMPLES"
)
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

Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Betty Fright",
    started: "1945"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Allen Screamspan",
    started: "1996"
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
    name: "Skrillix",
    started: "2009"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Dahli Llamma",
    started: "2009"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Lil free",
    started: "2009"
)
Artist.create(
    avatar: Faker::Avatar.image(),
    name: "Tyra Spanks",
    started: "2009"
)

Artist.all().each() {|artist|
    for i in (1..10)
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

