User.destroy_all
u1 = User.create :name => "Jeffrey", :username => "jeffrey", :email => "jeffrey@ga.co", :admin => true, :password => "chicken"
u2 = User.create :name => "James", :username => "james", :email => "james@ga.co", :admin => false, :password => "chicken"
u3 = User.create :name => "Ben", :username => "ben", :email => "ben@ga.co", :admin => false, :password => "chicken"
puts "#{ User.count } users created."

Director.destroy_all
d1 = Director.create :name => "Christopher Nolan", :dob => "1970-07-30", :pob => "London, England, UK", :image => "https://m.media-amazon.com/images/M/MV5BNjE3NDQyOTYyMV5BMl5BanBnXkFtZTcwODcyODU2Mw@@._V1_.jpg"
d2 = Director.create :name => "Quentin Tarantino", :dob => "1963-03-27", :pob => "Knoxville, Tennessee, USA", :image => "https://m.media-amazon.com/images/M/MV5BMTgyMjI3ODA3Nl5BMl5BanBnXkFtZTcwNzY2MDYxOQ@@._V1_SY1000_CR0,0,651,1000_AL_.jpg"
d3 = Director.create :name => "Martin Scorsese", :dob => "1942-11-17", :pob => "Queens, New York City, USA", :image => "https://m.media-amazon.com/images/M/MV5BMTcyNDA4Nzk3N15BMl5BanBnXkFtZTcwNDYzMjMxMw@@._V1_.jpg"
d4 = Director.create :name => "Steven Spielberg", :dob => "1946-12-18", :pob => "Cincinnati, Ohio, USA", :image => "https://m.media-amazon.com/images/M/MV5BMTY1NjAzNzE1MV5BMl5BanBnXkFtZTYwNTk0ODc0._V1_.jpg"
d5 = Director.create :name => "David Fincher", :dob => "1962-08-28", :pob => "Denver, Colorado, USA", :image => "https://m.media-amazon.com/images/M/MV5BMTc1NDkwMTQ2MF5BMl5BanBnXkFtZTcwMzY0ODkyMg@@._V1_.jpg"
d6 = Director.create :name => "Ridley Scott", :dob => "1937-11-30", :pob => "South Shields, County Durham, England", :image => "https://m.media-amazon.com/images/M/MV5BMGJkOGM5OWEtNDYxMy00Njg4LWExNjAtY2ZlNWNlNzVhNDk4XkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_SY1000_CR0,0,666,1000_AL_.jpg"
d7 = Director.create :name => "James Cameron", :dob => "1954-08-16", :pob => "Kapuskasing, Ontario, Canada", :image => "https://m.media-amazon.com/images/M/MV5BMjI0MjMzOTg2MF5BMl5BanBnXkFtZTcwMTM3NjQxMw@@._V1_.jpg"
d8 = Director.create :name => "Jon Watts", :dob => "1981-06-28", :pob => "Fountain, Colorado, USA", :image => "https://m.media-amazon.com/images/M/MV5BNzg2NjA5ODAyMV5BMl5BanBnXkFtZTgwODAzMjkxNDE@._V1_SX664_CR0,0,664,999_AL_.jpg"
d9 = Director.create :name => "Taika Waititi", :dob => "1946-12-18", :pob => "Wellington, New Zealand", :image => "https://m.media-amazon.com/images/M/MV5BMzk4MDIzNjcwNV5BMl5BanBnXkFtZTgwMTIyMjgwNDI@._V1_SY1000_CR0,0,799,1000_AL_.jpg"
d10 = Director.create :name => "Jon Favreau", :dob => "1966-10-19", :pob => "Queens, New York City, USA", :image => "https://m.media-amazon.com/images/M/MV5BNjcwNzg4MjktNDNlMC00M2U1LWJmMjgtZTVkMmI4MDI2MTVmXkEyXkFqcGdeQXVyMjI4MDI0NTM@._V1_SY1000_CR0,0,750,1000_AL_.jpg"
puts "#{ Director.count } directors created."

Genre.destroy_all
g1 = Genre.create :name => "Action"
g2 = Genre.create :name => "Drama"
g3 = Genre.create :name => "History"
g4 = Genre.create :name => "Adventure"
g5 = Genre.create :name => "Sci-Fi"
g6 = Genre.create :name => "Thriller"
g7 = Genre.create :name => "Crime"
g8 = Genre.create :name => "Mystery"
g9 = Genre.create :name => "Comedy"
g10 = Genre.create :name => "Western"
g11 = Genre.create :name => "War"
g12 = Genre.create :name => "Biography"
g13 = Genre.create :name => "History"
g14 = Genre.create :name => "Romance"
g15 = Genre.create :name => "Fantasy"
puts "#{ Genre.count } genres created."

Movie.destroy_all
m1 = Movie.create :title => "Dunkirk", :year => 2017, :overview => "Allied soldiers from Belgium, the British Empire, and France are surrounded by the German Army, and evacuated during a fierce battle in World War II.", :classification => "PG-13", :duration => 106, :image => "https://m.media-amazon.com/images/M/MV5BN2YyZjQ0NTEtNzU5MS00NGZkLTg0MTEtYzJmMWY3MWRhZjM2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt5013056", :tmdb_id => 374720
m2 = Movie.create :title => "Interstellar", :year => 2014, :overview => "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.", :classification => "PG-13", :duration => 169, :image => "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_SX675_AL_.jpg", :imdb_id => "tt0816692", :tmdb_id => 157336
m3 = Movie.create :title => "The Dark Knight Rises", :year => 2012, :overview => "Eight years after the Joker's reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.", :classification => "PG-13", :duration => 164, :image => "https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_.jpg", :imdb_id => "tt1345836", :tmdb_id => 49026
m4 = Movie.create :title => "Inception", :year => 2010, :overview => "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.", :classification => "PG-13", :duration => 148, :image => "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg", :imdb_id => "tt1375666", :tmdb_id => 27205
m5 = Movie.create :title => "The Dark Knight", :year => 2008, :overview => "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.", :classification => "PG-13", :duration => 152, :image => "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg", :imdb_id => "tt0468569", :tmdb_id => 155
m6 = Movie.create :title => "The Prestige", :year => 2006, :overview => "After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.", :classification => "PG-13", :duration => 130, :image => "https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_.jpg", :imdb_id => "tt0482571", :tmdb_id => 1124
m7 = Movie.create :title => "Batman Begins", :year => 2005, :overview => "After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.", :classification => "PG-13", :duration => 140, :image => "https://m.media-amazon.com/images/M/MV5BZmUwNGU2ZmItMmRiNC00MjhlLTg5YWUtODMyNzkxODYzMmZlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SY1000_SX750_AL_.jpg", :imdb_id => "tt0372784", :tmdb_id => 272
m8 = Movie.create :title => "Memento", :year => 2000, :overview => "A man with short-term memory loss attempts to track down his wife's murderer.", :classification => "R", :duration => 113, :image => "https://m.media-amazon.com/images/M/MV5BZTcyNjk1MjgtOWI3Mi00YzQwLWI5MTktMzY4ZmI2NDAyNzYzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,681,1000_AL_.jpg", :imdb_id => "tt0209144", :tmdb_id => 77
m9 = Movie.create :title => "Once Upon a Time in Hollywood", :year => 2019, :overview => "A faded television actor and his stunt double strive to achieve fame and success in the film industry during the final years of Hollywood's Golden Age in 1969 Los Angeles.", :classification => "R", :duration => 161, :image => "https://m.media-amazon.com/images/M/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt7131622", :tmdb_id => 466272
m10 = Movie.create :title => "The Hateful Eight", :year => 2015, :overview => "In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.", :classification => "R", :duration => 168, :image => "https://m.media-amazon.com/images/M/MV5BMjA1MTc1NTg5NV5BMl5BanBnXkFtZTgwOTM2MDEzNzE@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt3460252", :tmdb_id => 273248
m11 = Movie.create :title => "Django Unchained", :year => 2012, :overview => "With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.", :classification => "R", :duration => 165, :image => "https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt1853728", :tmdb_id => 68718
m12 = Movie.create :title => "Inglourious Basterds", :year => 2009, :overview => "In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner's vengeful plans for the same.", :classification => "R", :duration => 153, :image => "https://m.media-amazon.com/images/M/MV5BOTJiNDEzOWYtMTVjOC00ZjlmLWE0NGMtZmE1OWVmZDQ2OWJhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SY1000_SX675_AL_.jpg", :imdb_id => "tt0361748", :tmdb_id => 16869
m13 = Movie.create :title => "Pulp Fiction", :year => 1994, :overview => "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.", :classification => "R", :duration => 154, :image => "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,686,1000_AL_.jpg", :imdb_id => "tt0110912", :tmdb_id => 680
m14 = Movie.create :title => "Kill Bill: Vol 1", :year => 2003, :overview => "After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.", :classification => "R", :duration => 111, :image => "https://m.media-amazon.com/images/M/MV5BNzM3NDFhYTAtYmU5Mi00NGRmLTljYjgtMDkyODQ4MjNkMGY2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg", :imdb_id => "tt0266697", :tmdb_id => 24
m15 = Movie.create :title => "The Wolf of Wall Street", :year => 2013, :overview => "Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.", :classification => "R", :duration => 180, :image => "https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt0993846", :tmdb_id => 106646
m16 = Movie.create :title => "Shutter Island", :year => 2010, :overview => "In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.", :classification => "R", :duration => 138, :image => "https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_CR0,0,675,1000_AL_.jpg", :imdb_id => "tt1130884", :tmdb_id => 11324
m17 = Movie.create :title => "The Departed", :year => 2006, :overview => "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.", :classification => "R", :duration => 151, :image => "https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_.jpg", :imdb_id => "tt0407887", :tmdb_id => 1422
m18 = Movie.create :title => "The Aviator", :year => 2004, :overview => "A biopic depicting the early years of legendary Director and aviator Howard Hughes' career from the late 1920s to the mid 1940s.", :classification => "PG", :duration => 170, :image => "https://m.media-amazon.com/images/M/MV5BZTYzMjA2M2EtYmY1OC00ZWMxLThlY2YtZGI3MTQzOWM4YjE3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg", :imdb_id => "tt0338751", :tmdb_id => 2567
m19 = Movie.create :title => "Gangs of New York", :year => 2002, :overview => "In 1862, Amsterdam Vallon returns to the Five Points area of New York City seeking revenge against Bill the Butcher, his father's killer.", :classification => "R", :duration => 167, :image => "https://m.media-amazon.com/images/M/MV5BNDg3MmI1ZDYtMDZjYi00ZWRlLTk4NzEtZjY4Y2U0NjE5YmRiXkEyXkFqcGdeQXVyNzAxMjE1NDg@._V1_.jpg", :imdb_id => "tt0217505", :tmdb_id => 3131
m20 = Movie.create :title => "Silence", :year => 2016, :overview => "In the 17th century, two Portuguese Jesuit priests travel to Japan in an attempt to locate their mentor, who is rumored to have committed apostasy, and to propagate Catholicism.", :classification => "R", :duration => 161, :image => "https://m.media-amazon.com/images/M/MV5BMjY3OTk0NjA2NV5BMl5BanBnXkFtZTgwNTg3Mjc2MDI@._V1_SY1000_CR0,0,640,1000_AL_.jpg", :imdb_id => "tt0490215", :tmdb_id => 68730
m21 = Movie.create :title => "Ready Player One", :year => 2018, :overview => "When the creator of a virtual reality called the OASIS dies, he makes a posthumous challenge to all OASIS users to find his Easter Egg, which will give the finder his fortune and control of his world.", :classification => "PG-13", :duration => 140, :image => "https://m.media-amazon.com/images/M/MV5BY2JiYTNmZTctYTQ1OC00YjU4LWEwMjYtZjkwY2Y5MDI0OTU3XkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt1677720", :tmdb_id => 333339
m22 = Movie.create :title => "The Post", :year => 2017, :overview => "A cover-up that spanned four U.S. Presidents pushed the country's first female newspaper publisher and a hard-driving editor to join an unprecedented battle between the press and the government.", :classification => "PG-13", :duration => 116, :image => "https://m.media-amazon.com/images/M/MV5BMjQyMjEwOTIwNV5BMl5BanBnXkFtZTgwOTkzNTMxNDM@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt6294822", :tmdb_id => 446354
m23 = Movie.create :title => "Bridge of Spies", :year => 2015, :overview => "During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.", :classification => "PG-13", :duration => 142, :image => "https://m.media-amazon.com/images/M/MV5BMjIxOTI0MjU5NV5BMl5BanBnXkFtZTgwNzM4OTk4NTE@._V1_SY1000_SX675_AL_.jpg", :imdb_id => "tt3682448", :tmdb_id => 296098
m24 = Movie.create :title => "Munich", :year => 2005, :overview => "Based on the true story of the Black September aftermath, about the five men chosen to eliminate the ones responsible for that fateful day.", :classification => "R", :duration => 164, :image => "https://m.media-amazon.com/images/M/MV5BMTcwNzYzMzMwMF5BMl5BanBnXkFtZTcwMzMzODczMQ@@._V1_SY1000_SX675_AL_.jpg", :imdb_id => "tt0408306", :tmdb_id => 612
m25 = Movie.create :title => "War of the Worlds", :year => 2005, :overview => "As Earth is invaded by alien tripod fighting machines, one family fights for survival in this sci-fi action film.", :classification => "PG-13", :duration => 116, :image => "https://m.media-amazon.com/images/M/MV5BNDUyODAzNDI1Nl5BMl5BanBnXkFtZTcwMDA2NDAzMw@@._V1_SY1000_CR0,0,676,1000_AL_.jpg", :imdb_id => "tt0407304", :tmdb_id => 74
m26 = Movie.create :title => "The Terminal", :year => 2004, :overview => "An Eastern European tourist unexpectedly finds himself stranded in JFK airport, and must take up temporary residence there.", :classification => "PG-13", :duration => 128, :image => "https://m.media-amazon.com/images/M/MV5BMTM1MTIwNTMxOF5BMl5BanBnXkFtZTcwNjIxMjQyMw@@._V1_SY1000_CR0,0,737,1000_AL_.jpg", :imdb_id => "tt0362227", :tmdb_id => 594
m27 = Movie.create :title => "Catch Me If You Can", :year => 2002, :overview => "A seasoned FBI agent pursues Frank Abagnale Jr. who, before his 19th birthday, successfully forged millions of dollars' worth of checks while posing as a Pan Am pilot, a doctor, and a legal prosecutor.", :classification => "PG-13", :duration => 141, :image => "https://m.media-amazon.com/images/M/MV5BMTY5MzYzNjc5NV5BMl5BanBnXkFtZTYwNTUyNTc2._V1_.jpg", :imdb_id => "tt0264464", :tmdb_id => 640
m28 = Movie.create :title => "Minority Report", :year => 2002, :overview => "In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.", :classification => "PG-13", :duration => 145, :image => "https://m.media-amazon.com/images/M/MV5BZTI3YzZjZjEtMDdjOC00OWVjLTk0YmYtYzI2MGMwZjFiMzBlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SY1000_CR0,0,666,1000_AL_.jpg", :imdb_id => "tt0181689", :tmdb_id => 180
m29 = Movie.create :title => "Saving Private Ryan", :year => 1998, :overview => "Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.", :classification => "R", :duration => 169, :image => "https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SY1000_CR0,0,679,1000_AL_.jpg", :imdb_id => "tt0120815", :tmdb_id => 857
m30 = Movie.create :title => "Jurassic Park", :year => 1993, :overview => "A pragmatic Paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park's cloned dinosaurs to run loose.", :classification => "PG-13", :duration => 127, :image => "https://m.media-amazon.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_.jpg", :imdb_id => "tt0107290", :tmdb_id => 329
m31 = Movie.create :title => "Jaws", :year => 1975, :overview => "When a killer shark unleashes chaos on a beach community, it's up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.", :classification => "PG", :duration => 124, :image => "https://m.media-amazon.com/images/M/MV5BMmVmODY1MzEtYTMwZC00MzNhLWFkNDMtZjAwM2EwODUxZTA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX651_CR0,0,651,999_AL_.jpg", :imdb_id => "tt0073195", :tmdb_id => 578
m32 = Movie.create :title => "Fight Club", :year => 1999, :overview => "An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.", :classification => "R", :duration => 139, :image => "https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,666,1000_AL_.jpg", :imdb_id => "tt0137523", :tmdb_id => 550
m33 = Movie.create :title => "Se7en", :year => 1995, :overview => "Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.", :classification => "R", :duration => 127, :image => "https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,639,1000_AL_.jpg", :imdb_id => "tt0114369", :tmdb_id => 807
m34 = Movie.create :title => "Panic Room", :year => 2002, :overview => "A divorced woman and her diabetic daughter take refuge in their newly-purchased house's safe room, when three men break-in, searching for a missing fortune.", :classification => "R", :duration => 112, :image => "https://m.media-amazon.com/images/M/MV5BNmY4ZGFjYTYtMDNmYi00ZDM4LWFjYTgtNmNlZjBmMzg0MzQ3XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SY1000_SX672_AL_.jpg", :imdb_id => "tt0258000", :tmdb_id => 4547
m35 = Movie.create :title => "Zodiac", :year => 2007, :overview => "In the late 1960s/early 1970s, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.", :classification => "R", :duration => 157, :image => "https://m.media-amazon.com/images/M/MV5BN2UwNDc5NmEtNjVjZS00OTI5LWE5YjctMWM3ZjBiZGYwMGI2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,677,1000_AL_.jpg", :imdb_id => "tt0443706", :tmdb_id => 1949
m36 = Movie.create :title => "The Social Network", :year => 2010, :overview => "As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea, and by the co-founder who was later squeezed out of the business.", :classification => "PG-13", :duration => 120, :image => "https://m.media-amazon.com/images/M/MV5BOGUyZDUxZjEtMmIzMC00MzlmLTg4MGItZWJmMzBhZjE0Mjc1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg", :imdb_id => "tt1285016", :tmdb_id => 37799
m37 = Movie.create :title => "Gone Girl", :year => 2014, :overview => "With his wife's disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it's suspected that he may not be innocent.", :classification => "R", :duration => 149, :image => "https://m.media-amazon.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SY1000_CR0,0,678,1000_AL_.jpg", :imdb_id => "tt2267998", :tmdb_id => 210577
m38 = Movie.create :title => "The Girl with the Dragon Tattoo", :year => 2011, :overview => "Journalist Mikael Blomkvist is aided in his search for a woman who has been missing for forty years by Lisbeth Salander, a young computer hacker.", :classification => "R", :duration => 158, :image => "https://m.media-amazon.com/images/M/MV5BMTczNDk4NTQ0OV5BMl5BanBnXkFtZTcwNDAxMDgxNw@@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt1568346", :tmdb_id => 65754
m39 = Movie.create :title => "The Curious Case of Benjamin Button", :year => 2008, :overview => "Tells the story of Benjamin Button, a man who starts aging backwards with bizarre consequences.", :classification => "PG-13", :duration => 166, :image => "https://m.media-amazon.com/images/M/MV5BNjQ0NTY2ODY2M15BMl5BanBnXkFtZTgwMjE4MzkxMDE@._V1_.jpg", :imdb_id => "tt0421715", :tmdb_id => 4922
m40 = Movie.create :title => "The Martian", :year => 2015, :overview => "An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.", :classification => "PG-13", :duration => 144, :image => "https://m.media-amazon.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_SY1000_CR0,0,675,1000_AL_.jpg", :imdb_id => "tt3659388", :tmdb_id => 286217
m41 = Movie.create :title => "Exodus: Gods and Kings", :year => 2014, :overview => "The defiant leader Moses rises up against Egyptian Pharaoh Ramses II, setting six hundred thousand slaves on a monumental journey of escape from Egypt and its terrifying cycle of deadly plagues.", :classification => "PG-13", :duration => 150, :image => "https://m.media-amazon.com/images/M/MV5BMjI3MDY0NjkxNl5BMl5BanBnXkFtZTgwNTM3NTA0MzE@._V1_SY1000_SX674_AL_.jpg", :imdb_id => "tt1528100", :tmdb_id => 147441
m42 = Movie.create :title => "Prometheus", :year => 2012, :overview => "Following clues to the origin of mankind, a team finds a structure on a distant moon, but they soon realize they are not alone.", :classification => "R", :duration => 124, :image => "https://m.media-amazon.com/images/M/MV5BMTY3NzIyNTA2NV5BMl5BanBnXkFtZTcwNzE2NjI4Nw@@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt1446714", :tmdb_id => 70981
m43 = Movie.create :title => "Body of Lies", :year => 2008, :overview => "A CIA agent on the ground in Jordan hunts down a powerful terrorist leader while being caught between the unclear intentions of his American supervisors and Jordan Intelligence.", :classification => "R", :duration => 128, :image => "https://m.media-amazon.com/images/M/MV5BMTgzOTY3MTM0OV5BMl5BanBnXkFtZTcwNjc5MTI5MQ@@._V1_SY1000_SX675_AL_.jpg", :imdb_id => "tt0758774", :tmdb_id => 12113
m44 = Movie.create :title => "Robin Hood", :year => 2010, :overview => "In 12th century England, Robin and his band of marauders confront corruption in a local village and lead an uprising against the crown that will forever alter the balance of world power.", :classification => "PG-13", :duration => 140, :image => "https://m.media-amazon.com/images/M/MV5BMTM5NzcwMzEwOF5BMl5BanBnXkFtZTcwNjg5MTgwMw@@._V1_.jpg", :imdb_id => "tt0955308", :tmdb_id => 20662
m45 = Movie.create :title => "Kingdom of Heaven", :year => 2005, :overview => "Balian of Ibelin travels to Jerusalem during the Crusades of the 12th century, and there he finds himself as the defender of the city and its people.", :classification => "R", :duration => 144, :image => "https://m.media-amazon.com/images/M/MV5BMjE2MTIwNjg0MV5BMl5BanBnXkFtZTcwNjAxODIzMw@@._V1_SY1000_CR0,0,655,1000_AL_.jpg", :imdb_id => "tt0320661", :tmdb_id => 1495
m46 = Movie.create :title => "Gladiator", :year => 2000, :overview => "A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.", :classification => "R", :duration => 155, :image => "https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,675,1000_AL_.jpg", :imdb_id => "tt0172495", :tmdb_id => 98
m47 = Movie.create :title => "Blade Runner", :year => 1982, :overview => "A blade runner must pursue and terminate four replicants who stole a ship in space, and have returned to Earth to find their creator.", :classification => "R", :duration => 117, :image => "https://m.media-amazon.com/images/M/MV5BNzQzMzJhZTEtOWM4NS00MTdhLTg0YjgtMjM4MDRkZjUwZDBlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,671,1000_AL_.jpg", :imdb_id => "tt0083658", :tmdb_id => 78
m48 = Movie.create :title => "Avatar", :year => 2009, :overview => "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.", :classification => "PG-13", :duration => 162, :image => "https://m.media-amazon.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_.jpg", :imdb_id => "tt0499549", :tmdb_id => 19995
m49 = Movie.create :title => "Titanic", :year => 1997, :overview => "A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.", :classification => "PG-13", :duration => 194, :image => "https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SY1000_CR0,0,671,1000_AL_.jpg", :imdb_id => "tt0120338", :tmdb_id => 19995
m50 = Movie.create :title => "The Terminator", :year => 1984, :overview => "A seemingly indestructible robot is sent from 2029 to 1984 to assassinate a young waitress, whose unborn son will lead humanity in a war against sentient machines, while a human soldier from the same war is sent to protect her at all costs.", :classification => "R", :duration => 167, :image => "https://m.media-amazon.com/images/M/MV5BYTViNzMxZjEtZGEwNy00MDNiLWIzNGQtZDY2MjQ1OWViZjFmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,666,1000_AL_.jpg", :imdb_id => "tt0088247", :tmdb_id => 218
m51 = Movie.create :title => "Spider-Man: Homecoming", :year => 2017, :overview => "Peter Parker balances his life as an ordinary high school student in Queens with his superhero alter-ego Spider-Man, and finds himself on the trail of a new menace prowling the skies of New York City.", :classification => "PG-13", :duration => 133, :image => "https://m.media-amazon.com/images/M/MV5BNTk4ODQ1MzgzNl5BMl5BanBnXkFtZTgwMTMyMzM4MTI@._V1_SY1000_CR0,0,658,1000_AL_.jpg", :imdb_id => "tt2250912", :tmdb_id => 315635
m52 = Movie.create :title => "Spider-Man: Far from Home", :year => 2019, :overview => "Following the events of Avengers: Endgame (2019), Spider-Man must step up to take on new threats in a world that has changed forever.", :classification => "PG-13", :duration => 129, :image => "https://m.media-amazon.com/images/M/MV5BMGZlNTY1ZWUtYTMzNC00ZjUyLWE0MjQtMTMxN2E3ODYxMWVmXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt6320628", :tmdb_id => 429617
m53 = Movie.create :title => "Thor: Ragnarok", :year => 2017, :overview => "Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnarök, the destruction of his world, at the hands of the powerful and ruthless villain Hela.", :classification => "PG-13", :duration => 130, :image => "https://m.media-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt3501632", :tmdb_id => 284053
m54 = Movie.create :title => "Jojo Rabbit", :year => 2019, :overview => "A young boy in Hitler's army finds out his mother is hiding a Jewish girl in their home.", :classification => "PG-13", :duration => 108, :image => "https://m.media-amazon.com/images/M/MV5BZjU0Yzk2MzEtMjAzYy00MzY0LTg2YmItM2RkNzdkY2ZhN2JkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_SX667_AL_.jpg", :imdb_id => "tt2584384", :tmdb_id => 515001
m55 = Movie.create :title => "Iron Man", :year => 2008, :overview => "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.", :classification => "PG-13", :duration => 126, :image => "https://m.media-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_SY1000_CR0,0,674,1000_AL_.jpg", :imdb_id => "tt0371746", :tmdb_id => 1726
m56 = Movie.create :title => "Iron Man 2", :year => 2010, :overview => "With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father's legacy.", :classification => "PG-13", :duration => 124, :image => "https://m.media-amazon.com/images/M/MV5BMTM0MDgwNjMyMl5BMl5BanBnXkFtZTcwNTg3NzAzMw@@._V1_.jpg", :imdb_id => "tt1228705", :tmdb_id => 10138
puts "#{ Movie.count } movies created."

List.destroy_all
l1 = List.create :name => "Favourites", :user_id => 1, :private => true
l2 = List.create :name => "Watched", :user_id => 1, :private => true
l3 = List.create :name => "To Watch", :user_id => 1, :private => true
l4 = List.create :name => "My Faves", :user_id => 2, :private => true
l5 = List.create :name => "Awesome Movies", :user_id => 3, :private => true
puts "#{ List.count } lists created."

# Associations #################################################################
puts "Directors and Movies"
d1.movies << m1 << m2 << m3 << m4 << m5 << m6 << m7 << m8
d2.movies << m9 << m10 << m11 << m12 << m13 << m14
d3.movies << m15 << m16 << m17 << m18 << m19 << m20
d4.movies << m21 << m22 << m23 << m24 << m25 << m26 << m27 << m28 << m29 << m30 << m31
d5.movies << m32 << m33 << m34 << m35 << m36 << m37 << m38 << m39
d6.movies << m40 << m41 << m42 << m43 << m44 << m45 << m46 << m47
d7.movies << m48 << m49 << m50
d8.movies << m51 << m52
d9.movies << m53 << m54
d10.movies << m55 << m56

puts "Genres and Movies"
m1.genres << g1 << g2 << g3
m2.genres << g4 << g2 << g5
m3.genres << g1 << g6
m4.genres << g1 << g4 << g5
m5.genres << g1 << g2 << g7
m6.genres << g2 << g8 << g5
m7.genres << g1 << g4
m8.genres << g8 << g6
m9.genres << g9 << g2
m10.genres << g7 << g2 << g8
m11.genres << g2 << g10
m12.genres << g4 << g2 << g11
m13.genres << g7 << g2
m14.genres << g1 << g7 << g6
m15.genres << g12 << g7 << g2
m16.genres << g8 << g6
m17.genres << g7 << g2 << g6
m18.genres << g12 << g2
m19.genres << g7 << g2
m20.genres << g2 << g13
m21.genres << g1 << g4 << g5
m22.genres << g12 << g2 << g13
m23.genres << g2 << g3 << g6
m24.genres << g12 << g7 << g2
m25.genres << g4 << g5
m26.genres << g9 << g2 << g14
m27.genres << g12 << g7 << g2
m28.genres << g1 << g7 << g8
m29.genres << g2 << g11
m30.genres << g1 << g4 << g5
m31.genres << g4 << g2 << g6
m32.genres << g2
m33.genres << g7 << g2 << g8
m34.genres << g7 << g2 << g6
m35.genres << g7 << g2 << g8
m36.genres << g12 << g2
m37.genres << g2 << g8 << g6
m38.genres << g7 << g2 << g8
m39.genres << g2 << g15 << g14
m40.genres << g4 << g2 << g5
m41.genres << g1 << g2 << g15
m42.genres << g4 << g8 << g5
m43.genres << g1 << g2 << g6
m44.genres << g1 << g2 << g13
m45.genres << g1 << g4 << g2
m46.genres << g1 << g4 << g2
m47.genres << g1 << g5 << g6
m48.genres << g1 << g4 << g15
m49.genres << g2 << g14
m50.genres << g1 << g5
m51.genres << g1 << g4 << g5
m52.genres << g1 << g4 << g5
m53.genres << g1 << g4 << g9
m54.genres << g9 << g2 << g11
m55.genres << g1 << g4 << g5
m56.genres << g1 << g4 << g5

puts "Lists and Movies"
l1.movies << m2 << m3 << m10 << m17 << m38
l2.movies << m4 << m19 << m22 << m2 << m3 << m50
l3.movies << m40 << m32 << m37
l4.movies << m35 << m38 << m23
l5.movies << m23 << m4 << m32 << m12
