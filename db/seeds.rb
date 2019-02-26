# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Billboard.destroy_all()
# Artist.destroy_all()
User.destroy_all()


User.create(
    name: "super",
    email: "fake@mail",
    password: "password",
)
User.create(
    name: "super2",
    email: "fake@mail2",
    password: "password",
)

User.all().each() {|user|
    
    Billboard.create(
        name: "TOP 100",
        user_id: user.id
    )

    Billboard.create(
        name: "TOP 70s",
        user_id: user.id
    )
    Billboard.create(
        name: "TOP 80s",
        user_id: user.id
    )
    Billboard.create(
        name: "TOP 90s",
        user_id: user.id
    )
    Billboard.create(
        name: "TOP 200",
        user_id: user.id
    )
    Billboard.create(
        name: "TOP 50",
        user_id: user.id
    )
    Billboard.create(
        name: "BOTTOM 100",
        user_id: user.id
    )
    Billboard.create(
        name: "MOST INCLUSIVE",
        user_id: user.id
    )
    Billboard.create(
        name: "BIGGEST HITS",
        user_id: user.id
    )
    Billboard.create(
        name: "FAN FAVORITES",
        user_id: user.id
    )
    Billboard.create(
        name: "MOST VIEWED",
        user_id: user.id
    )
    
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Nuns And Roses",
        started: "1945",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "The Beagles",
        started: "1975",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Katy Prairie",
        started: "2004",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Aluminum Zepplin",
        started: "1965",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Britney Shears",
        started: "1995",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Mariah Scary",
        started: "1998",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Daft Skunk",
        started: "1985",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Tyra Spanks",
        started: "1993",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Justin Tinderlake",
        started: "1997",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Ellie Scolding",
        started: "20010",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Demi Tomato",
        started: "2007",
        user_id: user.id
    )
    Artist.create(
        avatar: Faker::Avatar.image(),
        name: "Kanye Zest",
        started: "1998",
        user_id: user.id
    )
    
    user.artists.all().each() {|artist|
        for i in (1..15)
            Song.create(
                name: Faker::Music.album,
                length: "2 mins",
                artist_id: artist.id
            )
        end
    }
    
    user.billboards.all().each() {|billboard|
        user.songs.all().each() { |song|
            if(Random.rand(4).to_i == 0)
                SongSlot.create(
                    billboard_id: billboard.id,
                    song_id: song.id,
                )
            end
        }
    }
    
}


#### Prints All Songs On All Billboards (a lot of data) ####
# Billboard.all().each() { |billboard|
#     puts billboard.name + "-----------"
#     billboard.songs.each() {|song|
#         puts song.name
#     }
# }

