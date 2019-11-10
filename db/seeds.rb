User.destroy_all
u1 = User.create :name => "Jeffrey", :username => "jeffrey", :email => "jeffrey@ga.co", :admin => true, :password => "chicken"
u2 = User.create :name => "Sam", :username => "sam", :email => "sam@ga.co", :admin => false, :password => "chicken"
u3 = User.create :name => "Ben", :username => "ben", :email => "ben@ga.co", :admin => false, :password => "chicken"
puts "#{ User.count } users created."

Director.destroy_all
d1 = Director.create :name => "Christopher Nolan", :dob => "1970-07-30", :pob => "Westminster, London, England, UK", :imdb_id => "nm0634240", :tmdb_id => 525, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/iG0Gs0i5yd6SG4tSFjlXi5ZnSX6.jpg"
d2 = Director.create :name => "Quentin Tarantino", :dob => "1963-03-27", :pob => "Knoxville, Tennessee, USA", :imdb_id => "nm0000233", :tmdb_id => 138, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/f00gwMDBfJh6D5c7KQan6eek9h6.jpg"
d3 = Director.create :name => "Martin Scorsese", :dob => "1942-11-17", :pob => "Queens, New York, USA", :imdb_id => "nm0000217", :tmdb_id => 1032, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/4Xwx5XL1RJj0JQmEo8Fhr6nkpOg.jpg"
d4 = Director.create :name => "Steven Spielberg", :dob => "1946-12-18", :pob => "Cincinnati, Ohio, USA", :imdb_id => "nm0000229", :tmdb_id => 488, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/pOK15UNaw75Bzj7BQO1ulehbPPm.jpg"
d5 = Director.create :name => "David Fincher", :dob => "1962-08-28", :pob => "Denver, Colorado, USA", :imdb_id => "nm0000399", :tmdb_id => 7467, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/dcBHejOsKvzVZVozWJAPzYthb8X.jpg"
d6 = Director.create :name => "Ridley Scott", :dob => "1937-11-30", :pob => "South Shields, County Durham, England, UK", :imdb_id => "nm0000631", :tmdb_id => 578, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/bUswI1wtcRtSuLHaaePn6OQrGJ2.jpg"
d7 = Director.create :name => "James Cameron", :dob => "1954-08-16", :pob => "Kapuskasing, Ontario, Canada", :imdb_id => "nm0000116", :tmdb_id => 2710, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/4TjSh3Er5LIOvFcB5inaRDPrBKu.jpg"
d8 = Director.create :name => "Jon Watts", :dob => "1981-06-28", :pob => "Fountain, Colorado, USA", :imdb_id => "nm1218281", :tmdb_id => 1293994, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/5CKKBhuScdsHs2KPBBx5pveMOQQ.jpg"
d9 = Director.create :name => "Taika Waititi", :dob => "1975-08-16", :pob => "Wellington, New Zealand", :imdb_id => "nm0169806", :tmdb_id => 55934, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/zCLBXGo5BS2e27srDBa5WpRnKul.jpg"
d10 = Director.create :name => "Jon Favreau", :dob => "1966-10-19", :pob => "Queens, New York, USA", :imdb_id => "nm0269463", :tmdb_id => 15277, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/rOVBKURoR7TrG8MYxTuNUFj3E68.jpg"
d11 = Director.create :name => "Peter Jackson", :dob => "1961-10-31", :pob => "Pukerua Bay, North Island, New Zealand", :imdb_id => "nm0001392", :tmdb_id => 108, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/kSrfI3TbMdIMmPVOflLQ56OfscB.jpg"
d12 = Director.create :name => "Alejandro González Iñárritu", :dob => "1963-08-15", :pob => "Mexico City, Distrito Federal, Mexico", :imdb_id => "nm0327944", :tmdb_id => 223, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/qWrltG9e0ssM3Y9pF86EAgteKHu.jpg"
puts "#{ Director.count } directors created."

Genre.destroy_all
g1 = Genre.create :name => "Action"
g2 = Genre.create :name => "Drama"
g3 = Genre.create :name => "History"
g4 = Genre.create :name => "Adventure"
g5 = Genre.create :name => "Science Fiction"
g6 = Genre.create :name => "Thriller"
g7 = Genre.create :name => "Crime"
g8 = Genre.create :name => "Mystery"
g9 = Genre.create :name => "Comedy"
g10 = Genre.create :name => "Western"
g11 = Genre.create :name => "War"
g12 = Genre.create :name => "Biography"
g13 = Genre.create :name => "Romance"
g14 = Genre.create :name => "Fantasy"
g15 = Genre.create :name => "Horror"
puts "#{ Genre.count } genres created."

Movie.destroy_all
m1 = Movie.create :title => "Dunkirk", :year => 2017, :overview => "The story of the miraculous evacuation of Allied soldiers from Belgium, Britain, Canada and France, who were cut off and surrounded by the German army from the beaches and harbour of Dunkirk between May 26th and June 4th 1940 during World War II.", :classification => "PG-13", :duration => 107, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/bOXBV303Fgkzn2K4FeKDc0O31q4.jpg", :imdb_id => "tt5013056", :tmdb_id => 374720, :youtube => "https://www.youtube.com/watch?v=F-eMt3SrfFU"
m2 = Movie.create :title => "Interstellar", :year => 2014, :overview => "Interstellar chronicles the adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.", :classification => "PG-13", :duration => 169, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/nBNZadXqJSdt05SHLqgT0HuC5Gm.jpg", :imdb_id => "tt0816692", :tmdb_id => 157336, :youtube => "https://www.youtube.com/watch?v=zSWdZVtXT7E"
m3 = Movie.create :title => "The Dark Knight Rises", :year => 2012, :overview => "Following the death of District Attorney Harvey Dent, Batman assumes responsibility for Dent's crimes to protect the late attorney's reputation and is subsequently hunted by the Gotham City Police Department. Eight years later, Batman encounters the mysterious Selina Kyle and the villainous Bane, a new terrorist leader who overwhelms Gotham's finest. The Dark Knight resurfaces to protect a city that has branded him an enemy.", :classification => "PG-13", :duration => 165, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/dEYnvnUfXrqvqeRSqvIEtmzhoA8.jpg", :imdb_id => "tt1345836", :tmdb_id => 49026, :youtube => "https://www.youtube.com/watch?v=g8evyE9TuYk"
m4 = Movie.create :title => "Inception", :year => 2010, :overview => "Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: inception, the implantation of another person's idea into a target's subconscious.", :classification => "PG-13", :duration => 148, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/qmDpIHrmpJINaRKAfWQfftjCdyi.jpg", :imdb_id => "tt1375666", :tmdb_id => 27205, :youtube => "https://www.youtube.com/watch?v=xitHF0IPJSQ"
m5 = Movie.create :title => "The Dark Knight", :year => 2008, :overview => "Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.", :classification => "PG-13", :duration => 152, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/pKKvCaL1TPTVtbI6EeliyND3api.jpg", :imdb_id => "tt0468569", :tmdb_id => 155, :youtube => "https://www.youtube.com/watch?v=g8evyE9TuYk"
m6 = Movie.create :title => "The Prestige", :year => 2006, :overview => "A mysterious story of two magicians whose intense rivalry leads them on a life-long battle for supremacy -- full of obsession, deceit and jealousy with dangerous and deadly consequences.", :classification => "PG-13", :duration => 130, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/5MXyQfz8xUP3dIFPTubhTsbFY6N.jpg", :imdb_id => "tt0482571", :tmdb_id => 1124, :youtube => "https://www.youtube.com/watch?v=ijXruSzfGEc"
m7 = Movie.create :title => "Batman Begins", :year => 2005, :overview => "Driven by tragedy, billionaire Bruce Wayne dedicates his life to uncovering and defeating the corruption that plagues his home, Gotham City. Unable to work within the system, he instead creates a new identity, a symbol of fear for the criminal underworld - The Batman.", :classification => "PG-13", :duration => 140, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/KbKjdreu1edayTusRXsaAlJFVb.jpg", :imdb_id => "tt0372784", :tmdb_id => 272, :youtube => "https://www.youtube.com/watch?v=qHhHIbNuok8"
m8 = Movie.create :title => "Memento", :year => 2000, :overview => "Leonard Shelby is tracking down the man who raped and murdered his wife. The difficulty of locating his wife's killer, however, is compounded by the fact that he suffers from a rare, untreatable form of short-term memory loss. Although he can recall details of life before his accident, Leonard cannot remember what happened fifteen minutes ago, where he's going, or why.", :classification => "R", :duration => 113, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/fQMSaP88cf1nz4qwuNEEFtazuDM.jpg", :imdb_id => "tt0209144", :tmdb_id => 77, :youtube => "https://www.youtube.com/watch?v=Br3aEhjaK2E"
m9 = Movie.create :title => "Once Upon a Time... in Hollywood", :year => 2019, :overview => "A faded television actor and his stunt double strive to achieve fame and success in the film industry during the final years of Hollywood's Golden Age in 1969 Los Angeles.", :classification => "R", :duration => 161, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/8j58iEBw9pOXFD2L0nt0ZXeHviB.jpg", :imdb_id => "tt7131622", :tmdb_id => 466272, :youtube => "https://www.youtube.com/watch?v=ELeMaP8EPAA"
m10 = Movie.create :title => "The Hateful Eight", :year => 2015, :overview => "Bounty hunters seek shelter from a raging blizzard and get caught up in a plot of betrayal and deception.", :classification => "R", :duration => 188, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/fqe8JxDNO8B8QfOGTdjh6sPCdSC.jpg", :imdb_id => "tt3460252", :tmdb_id => 273248, :youtube => "https://www.youtube.com/watch?v=nIOmotayDMY"
m11 = Movie.create :title => "Django Unchained", :year => 2012, :overview => "With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.", :classification => "R", :duration => 165, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/5WJnxuw41sddupf8cwOxYftuvJG.jpg", :imdb_id => "tt1853728", :tmdb_id => 68718, :youtube => "https://www.youtube.com/watch?v=_iH0UBYDI4g"
m12 = Movie.create :title => "Inglourious Basterds", :year => 2009, :overview => "In Nazi-occupied France during World War II, a group of Jewish-American soldiers known as 'The Basterds' are chosen specifically to spread fear throughout the Third Reich by scalping and brutally killing Nazis. The Basterds, lead by Lt. Aldo Raine soon cross paths with a French-Jewish teenage girl who runs a movie theater in Paris which is targeted by the soldiers.", :classification => "R", :duration => 153, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/ai0LXkzVM3hMjDhvFdKMUemoBe.jpg", :imdb_id => "tt0361748", :tmdb_id => 16869, :youtube => "https://www.youtube.com/watch?v=KnrRy6kSFF0"
m13 = Movie.create :title => "Pulp Fiction", :year => 1994, :overview => "A burger-loving hit man, his philosophical partner, a drug-addled gangster's moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.", :classification => "R", :duration => 154, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/dM2w364MScsjFf8pfMbaWUcWrR.jpg", :imdb_id => "tt0110912", :tmdb_id => 680, :youtube => "https://www.youtube.com/watch?v=5ZAhzsi1ybM"
m14 = Movie.create :title => "Kill Bill: Vol. 1", :year => 2003, :overview => "An assassin is shot by her ruthless employer, Bill, and other members of their assassination circle – but she lives to plot her vengeance.", :classification => "R", :duration => 111, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/v7TaX8kXMXs5yFFGR41guUDNcnB.jpg", :imdb_id => "tt0266697", :tmdb_id => 24, :youtube => "https://www.youtube.com/watch?v=7kSuas6mRpk"
m15 = Movie.create :title => "The Wolf of Wall Street", :year => 2013, :overview => "A New York stockbroker refuses to cooperate in a large securities fraud case involving corruption on Wall Street, corporate banking world and mob infiltration. Based on Jordan Belfort's autobiography.", :classification => "R", :duration => 180, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/vK1o5rZGqxyovfIhZyMELhk03wO.jpg", :imdb_id => "tt0993846", :tmdb_id => 106646, :youtube => "https://www.youtube.com/watch?v=iszwuX1AK6A"
m16 = Movie.create :title => "Shutter Island", :year => 2010, :overview => "World War II soldier-turned-U.S. Marshal Teddy Daniels investigates the disappearance of a patient from a hospital for the criminally insane, but his efforts are compromised by his troubling visions and also by a mysterious doctor.", :classification => "R", :duration => 138, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/aZqKsvpJDFy2UzUMsdskNFbfkOd.jpg", :imdb_id => "tt1130884", :tmdb_id => 11324, :youtube => "https://www.youtube.com/watch?v=qdPw9x9h5CY"
m17 = Movie.create :title => "The Departed", :year => 2006, :overview => "To take down South Boston's Irish Mafia, the police send in one of their own to infiltrate the underworld, not realizing the syndicate has done likewise. While an undercover cop curries favor with the mob kingpin, a career criminal rises through the police ranks. But both sides soon discover there's a mole among them.", :classification => "R", :duration => 151, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/tGLO9zw5ZtCeyyEWgbYGgsFxC6i.jpg", :imdb_id => "tt0407887", :tmdb_id => 1422, :youtube => "https://www.youtube.com/watch?v=iojhqm0JTW4"
m18 = Movie.create :title => "The Aviator", :year => 2004, :overview => "A biopic depicting the life of filmmaker and aviation pioneer Howard Hughes from 1927 to 1947, during which time he became a successful film producer and an aviation magnate, while simultaneously growing more unstable due to severe obsessive-compulsive disorder.", :classification => "PG-13", :duration => 170, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/3MKBQgIHI5DPVNvryiTesskS5mf.jpg", :imdb_id => "tt0338751", :tmdb_id => 2567, :youtube => "https://www.youtube.com/watch?v=zikFDK4cuQA"
m19 = Movie.create :title => "Gangs of New York", :year => 2002, :overview => "It's 1863. America was born in the streets. Amsterdam Vallon returns to the Five Points of America to seek vengeance against the psychotic gangland kingpin, Bill the Butcher, who murdered his father years earlier. With an eager pickpocket by his side and a whole new army, Vallon fights his way to seek vengeance on the Butcher and restore peace in the area.", :classification => "R", :duration => 167, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/lemqKtcCuAano5aqrzxYiKC8kkn.jpg", :imdb_id => "tt0217505", :tmdb_id => 3131, :youtube => "https://www.youtube.com/watch?v=qHVUPri5tjA"
m20 = Movie.create :title => "Silence", :year => 2016, :overview => "Two Jesuit priests travel to seventeenth century Japan which has, under the Tokugawa shogunate, banned Catholicism and almost all foreign contact.", :classification => "R", :duration => 161, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/sHM6i6se7mwKGRDvW4nQC7dkeKI.jpg", :imdb_id => "tt0490215", :tmdb_id => 68730, :youtube => "https://www.youtube.com/watch?v=IqrgxZLd_gE"
m21 = Movie.create :title => "Ready Player One", :year => 2018, :overview => "When the creator of a popular video game system dies, a virtual contest is created to compete for his fortune.", :classification => "PG-13", :duration => 140, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/pU1ULUq8D3iRxl1fdX2lZIzdHuI.jpg", :imdb_id => "tt1677720", :tmdb_id => 333339, :youtube => "https://www.youtube.com/watch?v=cSp1dM2Vj48"
m22 = Movie.create :title => "The Post", :year => 2017, :overview => "A cover-up that spanned four U.S. Presidents pushed the country's first female newspaper publisher and a hard-driving editor to join an unprecedented battle between journalist and government. Inspired by true events.", :classification => "PG-13", :duration => 116, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/h4XG3g6uMMPIBPjAoQhC2QIMdkl.jpg", :imdb_id => "tt6294822", :tmdb_id => 446354, :youtube => "https://www.youtube.com/watch?v=nrXlY6gzTTM"
m23 = Movie.create :title => "Bridge of Spies", :year => 2015, :overview => "During the Cold War, the Soviet Union captures U.S. pilot Francis Gary Powers after shooting down his U-2 spy plane. Sentenced to 10 years in prison, Powers' only hope is New York lawyer James Donovan, recruited by a CIA operative to negotiate his release. Donovan boards a plane to Berlin, hoping to win the young man's freedom through a prisoner exchange. If all goes well, the Russians would get Rudolf Abel, the convicted spy who Donovan defended in court.", :classification => "PG-13", :duration => 141, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/nokkbw7qbEj4qISQSWuTqltkaIo.jpg", :imdb_id => "tt3682448", :tmdb_id => 296098, :youtube => "https://www.youtube.com/watch?v=7JnC2LIJdR0"
m24 = Movie.create :title => "Munich", :year => 2005, :overview => "During the 1972 Olympic Games in Munich, eleven Israeli athletes are taken hostage and murdered by a Palestinian terrorist group known as Black September. In retaliation, the Israeli government recruits a group of Mossad agents to track down and execute those responsible for the attack.", :classification => "R", :duration => 164, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/7vVNo6KNonhUYYcT40Zb6QnxmY5.jpg", :imdb_id => "tt0408306", :tmdb_id => 612, :youtube => "https://www.youtube.com/watch?v=vWQyjc1QvGU"
m25 = Movie.create :title => "War of the Worlds", :year => 2005, :overview => "Ray Ferrier is a divorced dockworker and less-than-perfect father. Soon after his ex-wife and her new husband drop of his teenage son and young daughter for a rare weekend visit, a strange and powerful lightning storm touches down.", :classification => "PG-13", :duration => 116, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/xXMM9KY2eq1SDOQif9zO91YOBA8.jpg", :imdb_id => "tt0407304", :tmdb_id => 74, :youtube => "https://www.youtube.com/watch?v=msxe3yJPfyY"
m26 = Movie.create :title => "The Terminal", :year => 2004, :overview => "Overview
Viktor Navorski is a man without a country; his plane took off just as a coup d'etat exploded in his homeland, leaving it in shambles, and now he's stranded at Kennedy Airport, where he's holding a passport that nobody recognizes. While quarantined in the transit lounge until authorities can figure out what to do with him, Viktor simply goes on living – and courts romance with a beautiful flight attendant.", :classification => "PG-13", :duration => 128, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/f4Dup6awDfDqAHKgWqNJ2HFw1qN.jpg", :imdb_id => "tt0362227", :tmdb_id => 594, :youtube => "https://www.youtube.com/watch?v=GZjC9dAvWuU"
m27 = Movie.create :title => "Catch Me If You Can", :year => 2002, :overview => "A true story about Frank Abagnale Jr. who, before his 19th birthday, successfully conned millions of dollars worth of checks as a Pan Am pilot, doctor, and legal prosecutor. An FBI agent makes it his mission to put him behind bars. But Frank not only eludes capture, he revels in the pursuit.", :classification => "PG-13", :duration => 141, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/MywWCQGJNUr5kivAQ7eseCG7rm.jpg", :imdb_id => "tt0264464", :tmdb_id => 640, :youtube => "https://www.youtube.com/watch?v=xas1UyTiVUw"
m28 = Movie.create :title => "Minority Report", :year => 2002, :overview => "John Anderton is a top 'Precrime' cop in the late-21st century, when technology can predict crimes before they're committed. But Anderton becomes the quarry when another investigator targets him for a murder charge.", :classification => "PG-13", :duration => 145, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/h3lpltSn7Rj1eYTPQO1lYGdw4Bz.jpg", :imdb_id => "tt0181689", :tmdb_id => 180, :youtube => "https://www.youtube.com/watch?v=aGWQYgZZEEQ"
m29 = Movie.create :title => "Saving Private Ryan", :year => 1998, :overview => "As U.S. troops storm the beaches of Normandy, three brothers lie dead on the battlefield, with a fourth trapped behind enemy lines. Ranger captain John Miller and seven men are tasked with penetrating German-held territory and bringing the boy home.", :classification => "R", :duration => 169, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/miDoEMlYDJhOCvxlzI0wZqBs9Yt.jpg", :imdb_id => "tt0120815", :tmdb_id => 857, :youtube => "https://www.youtube.com/watch?v=RYExstiQlLc"
m30 = Movie.create :title => "Jurassic Park", :year => 1993, :overview => "A wealthy entrepreneur secretly creates a theme park featuring living dinosaurs drawn from prehistoric DNA. Before opening day, he invites a team of experts and his two eager grandchildren to experience the park and help calm anxious investors. However, the park is anything but amusing as the security systems go off-line and the dinosaurs escape.", :classification => "PG-13", :duration => 127, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/c414cDeQ9b6qLPLeKmiJuLDUREJ.jpg", :imdb_id => "tt0107290", :tmdb_id => 329, :youtube => "https://www.youtube.com/watch?v=lc0UehYemQA"
m31 = Movie.create :title => "Jaws", :year => 1975, :overview => "When an insatiable great white shark terrorizes the townspeople of Amity Island, the police chief, an oceanographer and a grizzled shark hunter seek to destroy the blood-thirsty beast.", :classification => "PG", :duration => 124, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/l1yltvzILaZcx2jYvc5sEMkM7Eh.jpg", :imdb_id => "tt0073195", :tmdb_id => 578, :youtube => "https://www.youtube.com/watch?v=U1fu_sA7XhE"
m32 = Movie.create :title => "Fight Club", :year => 1999, :overview => "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground fight clubs' forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.", :classification => "R", :duration => 139, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/adw6Lq9FiC9zjYEpOqfq03ituwp.jpg", :imdb_id => "tt0137523", :tmdb_id => 550, :youtube => "https://www.youtube.com/watch?v=BdJKm16Co6M"
m33 = Movie.create :title => "Se7en", :year => 1995, :overview => "Two homicide detectives are on a desperate hunt for a serial killer whose crimes are based on the seven deadly sins in this dark and haunting film that takes viewers from the tortured remains of one victim to the next. The seasoned Det. Sommerset researches each sin in an effort to get inside the killer's mind, while his novice partner, Mills, scoffs at his efforts to unravel the case.", :classification => 'R', :duration => 127, :imdb_id => "tt0114369", :tmdb_id => 807, :youtube => "https://www.youtube.com/watch?v=znmZoVkCjpI", :image => 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/8zw8IL4zEPjkh8Aysdcd0FwGMb0.jpg'
m34 = Movie.create :title => "Panic Room", :year => 2002, :overview => "Trapped in their New York brownstone's panic room, a hidden chamber built as a sanctuary in the event of break-ins, newly divorced Meg Altman and her young daughter Sarah play a deadly game of cat-and-mouse with three intruders - Burnham, Raoul and Junior - during a brutal home invasion. But the room itself is the focal point because what the intruders really want is inside it.", :classification => "R", :duration => 111, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/hjkugMBhYjV8ZXgvSnGXI3q7wt7.jpg", :imdb_id => "tt0258000", :tmdb_id => 4547, :youtube => "https://www.youtube.com/watch?v=sp2kKzrCm44"
m35 = Movie.create :title => "Zodiac", :year => 2007, :overview => "The true story of the investigation of the Zodiac Killer, a serial killer who terrified the San Francisco Bay Area, taunting police with his ciphers and letters. The case becomes an obsession for three men as their lives and careers are built and destroyed by the endless trail of clues.", :classification => "R", :duration => 157, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/bgLyOROfFQI3FqYL7jQbiaV8lkN.jpg", :imdb_id => "tt0443706", :tmdb_id => 1949, :youtube => "https://www.youtube.com/watch?v=yNncHPl1UXg"
m36 = Movie.create :title => "The Social Network", :year => 2010, :overview => "On a fall night in 2003, Harvard undergrad and computer programming genius Mark Zuckerberg sits down at his computer and heatedly begins working on a new idea. In a fury of blogging and programming, what begins in his dorm room as a small site among friends soon becomes a global social network and a revolution in communication. A mere six years and 500 million friends later, Mark Zuckerberg is the youngest billionaire in history... but for this entrepreneur, success leads to both personal and legal complications.", :classification => "PG-13", :duration => 121, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/ok5Wh8385Kgblq9MSU4VGvazeMH.jpg", :imdb_id => "tt1285016", :tmdb_id => 37799, :youtube => "https://www.youtube.com/watch?v=lB95KLmpLR4"
m37 = Movie.create :title => "Gone Girl", :year => 2014, :overview => "With his wife's disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it's suspected that he may not be innocent.", :classification => "R", :duration => 149, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/gdiLTof3rbPDAmPaCf4g6op46bj.jpg", :imdb_id => "tt2267998", :tmdb_id => 210577, :youtube => "https://www.youtube.com/watch?v=2-_-1nJf8Vg"
m38 = Movie.create :title => "The Girl with the Dragon Tattoo", :year => 2011, :overview => "This English-language adaptation of the Swedish novel by Stieg Larsson follows a disgraced journalist, Mikael Blomkvist, as he investigates the disappearance of a weary patriarch's niece from 40 years ago. He is aided by the pierced, tattooed, punk computer hacker named Lisbeth Salander. As they work together in the investigation, Blomkvist and Salander uncover immense corruption beyond anything they have ever imagined.", :classification => "R", :duration => 158, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/voxRWFTtagLiqnJQs9tWQLB0MN.jpg", :imdb_id => "tt1568346", :tmdb_id => 65754, :youtube => "https://www.youtube.com/watch?v=DqQe3OrsMKI"
m39 = Movie.create :title => "The Curious Case of Benjamin Button", :year => 2008, :overview => "Born under unusual circumstances, Benjamin Button springs into being as an elderly man in a New Orleans nursing home and ages in reverse. Twelve years after his birth, he meets Daisy, a child who flits in and out of his life as she grows up to be a dancer. Though he has all sorts of unusual adventures over the course of his life, it is his relationship with Daisy, and the hope that they will come together at the right time, that drives Benjamin forward.", :classification => "PG-13", :duration => 166, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/gjMR102u5hPdIAWX7O2rim8ZWgA.jpg", :imdb_id => "tt0421715", :tmdb_id => 4922, :youtube => "https://www.youtube.com/watch?v=iH6FdW39Hag"
m40 = Movie.create :title => "The Martian", :year => 2015, :overview => "During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive.", :classification => "PG-13", :duration => 141, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/5aGhaIHYuQbqlHWvWYqMCnj40y2.jpg", :imdb_id => "tt3659388", :tmdb_id => 286217, :youtube => "https://www.youtube.com/watch?v=ej3ioOneTy8"
m41 = Movie.create :title => "Exodus: Gods and Kings", :year => 2014, :overview => "The defiant leader Moses rises up against the Egyptian Pharaoh Ramses, setting 400,000 slaves on a monumental journey of escape from Egypt and its terrifying cycle of deadly plagues.", :classification => "PG-13", :duration => 150, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/ycDcPCpWM7hSdIR6tFkOzQPkve2.jpg", :imdb_id => "tt1528100", :tmdb_id => 147441, :youtube => "https://www.youtube.com/watch?v=t-8YsulfxVI"
m42 = Movie.create :title => "Prometheus", :year => 2012, :overview => "A team of explorers discover a clue to the origins of mankind on Earth, leading them on a journey to the darkest corners of the universe. There, they must fight a terrifying battle to save the future of the human race.", :classification => "R", :duration => 124, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/ng8ALjSDhUmwLl7vtjUWIZNQSlt.jpg", :imdb_id => "tt1446714", :tmdb_id => 70981, :youtube => "https://www.youtube.com/watch?v=34cEo0VhfGE"
m43 = Movie.create :title => "Body of Lies", :year => 2008, :overview => "The CIA’s hunt is on for the mastermind of a wave of terrorist attacks. Roger Ferris is the agency’s man on the ground, moving from place to place, scrambling to stay ahead of ever-shifting events. An eye in the sky – a satellite link – watches Ferris. At the other end of that real-time link is the CIA’s Ed Hoffman, strategizing events from thousands of miles away. And as Ferris nears the target, he discovers trust can be just as dangerous as it is necessary for survival.", :classification => "R", :duration => 128, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/ngQAEKZVpT0SD9i98ApEgsQKC52.jpg", :imdb_id => "tt0758774", :tmdb_id => 12113, :youtube => "https://www.youtube.com/watch?v=A4noCwwEUBA"
m44 = Movie.create :title => "Robin Hood", :year => 2010, :overview => "When soldier Robin happens upon the dying Robert of Loxley, he promises to return the man's sword to his family in Nottingham. There, he assumes Robert's identity; romances his widow, Marion; and draws the ire of the town's sheriff and King John's henchman, Godfrey.", :classification => "PG-13", :duration => 140, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/4gH0vhyOcl7QV3t81653CpWjEB6.jpg", :imdb_id => "tt0955308", :tmdb_id => 20662, :youtube => "https://www.youtube.com/watch?v=fQ6zXDSgwIY"
m45 = Movie.create :title => "Kingdom of Heaven", :year => 2005, :overview => "After his wife dies, a blacksmith named Balian is thrust into royalty, political intrigue and bloody holy wars during the Crusades.", :classification => "R", :duration => 144, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/aB4urkgTxBURJMUkd0kceDD7FUM.jpg", :imdb_id => "tt0320661", :tmdb_id => 1495, :youtube => "https://www.youtube.com/watch?v=moNH4N44D28"
m46 = Movie.create :title => "Gladiator", :year => 2000, :overview => "In the year 180, the death of emperor Marcus Aurelius throws the Roman Empire into chaos. Maximus is one of the Roman army's most capable and trusted generals and a key advisor to the emperor. As Marcus' devious son Commodus ascends to the throne, Maximus is set to be executed. He escapes, but is captured by slave traders. Renamed Spaniard and forced to become a gladiator, Maximus must battle to the death with other men for the amusement of paying audiences.", :classification => "R", :duration => 155, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/6WBIzCgmDCYrqh64yDREGeDk9d3.jpg", :imdb_id => "tt0172495", :tmdb_id => 98, :youtube => "https://www.youtube.com/watch?v=uvbavW31adA"
m47 = Movie.create :title => "Blade Runner", :year => 1982, :overview => "In the smog-choked dystopian Los Angeles of 2019, blade runner Rick Deckard is called out of retirement to terminate a quartet of replicants who have escaped to Earth seeking their creator for a way to extend their short life spans.", :classification => "R", :duration => 117, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/vfzE3pjE5G7G7kcZWrA3fnbZo7V.jpg", :imdb_id => "tt0083658", :tmdb_id => 78, :youtube => "https://www.youtube.com/watch?v=iYhJ7Mf2Oxs"
m48 = Movie.create :title => "Avatar", :year => 2009, :overview => "In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an alien civilization.", :classification => "PG-13", :duration => 162, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/kmcqlZGaSh20zpTbuoF0Cdn07dT.jpg", :imdb_id => "tt0499549", :tmdb_id => 19995, :youtube => "https://www.youtube.com/watch?v=5PSNL1qE6VY"
m49 = Movie.create :title => "Titanic", :year => 1997, :overview => "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic, 84 years later. A young Rose boards the ship with her mother and fiancé. Meanwhile, Jack Dawson and Fabrizio De Rossi win third-class tickets aboard the ship. Rose tells the whole story from Titanic's departure through to its death—on its first and last voyage—on April 15, 1912.", :classification => "PG-13", :duration => 194, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/kHXEpyfl6zqn8a6YuozZUujufXf.jpg", :imdb_id => "tt0120338", :tmdb_id => 597, :youtube => "https://www.youtube.com/watch?v=2e-eXJ6HgkQ"
m50 = Movie.create :title => "The Terminator", :year => 1984, :overview => "In the post-apocalyptic future, reigning tyrannical supercomputers teleport a cyborg assassin known as the 'Terminator' back to 1984 to kill Sarah Connor, whose unborn son is destined to lead insurgents against 21st century mechanical hegemony. Meanwhile, the human-resistance movement dispatches a lone warrior to safeguard Sarah. Can he stop the virtually indestructible killing machine?", :classification => "R", :duration => 167, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/q8ffBuxQlYOHrvPniLgCbmKK4Lv.jpg", :imdb_id => "tt0088247", :tmdb_id => 218, :youtube => "https://www.youtube.com/watch?v=k64P4l2Wmeg"
m51 = Movie.create :title => "Spider-Man: Homecoming", :year => 2017, :overview => "Following the events of Captain America: Civil War, Peter Parker, with the help of his mentor Tony Stark, tries to balance his life as an ordinary high school student in Queens, New York City, with fighting crime as his superhero alter ego Spider-Man as a new threat, the Vulture, emerges.", :classification => "PG-13", :duration => 133, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/c24sv2weTHPsmDa7jEMN0m2P3RT.jpg", :imdb_id => "tt2250912", :tmdb_id => 315635, :youtube => "https://www.youtube.com/watch?v=DiTECkLZ8HM"
m52 = Movie.create :title => "Spider-Man: Far from Home", :year => 2019, :overview => "Peter Parker and his friends go on a summer trip to Europe. However, they will hardly be able to rest - Peter will have to agree to help Nick Fury uncover the mystery of creatures that cause natural disasters and destruction throughout the continent.", :classification => "PG-13", :duration => 129, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/lcq8dVxeeOqHvvgcte707K0KVx5.jpg", :imdb_id => "tt6320628", :tmdb_id => 429617, :youtube => "https://www.youtube.com/watch?v=DYYtuKyMtY8"
m53 = Movie.create :title => "Thor: Ragnarok", :year => 2017, :overview => "Thor is imprisoned on the other side of the universe and finds himself in a race against time to get back to Asgard to stop Ragnarok, the destruction of his home-world and the end of Asgardian civilization, at the hands of an all-powerful new threat, the ruthless Hela.", :classification => "PG-13", :duration => 131, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/rzRwTcFvttcN1ZpX2xv4j3tSdJu.jpg", :imdb_id => "tt3501632", :tmdb_id => 284053, :youtube => "https://www.youtube.com/watch?v=ue80QwXMRHg"
m54 = Movie.create :title => "Jojo Rabbit", :year => 2019, :overview => "A World War II satire that follows a lonely German boy whose world view is turned upside down when he discovers his single mother is hiding a young Jewish girl in their attic. Aided only by his idiotic imaginary friend, Adolf Hitler, Jojo must confront his blind nationalism.", :classification => "PG-13", :duration => 108, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/zIXJoYXc8ezMXc7DEaYii4XwIlS.jpg", :imdb_id => "tt2584384", :tmdb_id => 515001, :youtube => "https://www.youtube.com/watch?v=tL4McUzXfFI"
m55 = Movie.create :title => "Iron Man", :year => 2008, :overview => "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.", :classification => "PG-13", :duration => 126, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/78lPtwv72eTNqFW9COBYI0dWDJa.jpg", :imdb_id => "tt0371746", :tmdb_id => 1726, :youtube => "https://www.youtube.com/watch?v=8hYlB38asDY"
m56 = Movie.create :title => "Iron Man 2", :year => 2010, :overview => "With the world now aware of his dual life as the armored superhero Iron Man, billionaire inventor Tony Stark faces pressure from the government, the press and the public to share his technology with the military. Unwilling to let go of his invention, Stark, with Pepper Potts and James 'Rhodey' Rhodes at his side, must forge new alliances – and confront powerful enemies.", :classification => "PG-13", :duration => 124, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/1LoT5WsN4Lc1aR7A18ciSA1LoMy.jpg", :imdb_id => "tt1228705", :tmdb_id => 10138, :youtube => "https://www.youtube.com/watch?v=DIfgxIv5xmk"
m57 = Movie.create :title => "The Lord of The Rings: The Fellowship of the Ring", :year => 2001, :overview => "Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.", :classification => "PG-13", :duration => 178, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/56zTpe2xvaA4alU51sRWPoKPYZy.jpg", :imdb_id => "tt0120737", :tmdb_id => 120, :youtube => "https://www.youtube.com/watch?v=V75dMMIW2B4"
m58 = Movie.create :title => "The Lord of The Rings: The Return of the King", :year => 2003, :overview => "Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron's forces. Meanwhile, Frodo and Sam take the ring closer to the heart of Mordor, the dark lord's realm.", :classification => "PG-13", :duration => 201, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg", :imdb_id => "tt0167260", :tmdb_id => 122, :youtube => "https://www.youtube.com/watch?v=r5X-hFf6Bwo"
m59 = Movie.create :title => "The Lord of The Rings: The Two Towers", :year => 2002, :overview => "Frodo and Sam are trekking to Mordor to destroy the One Ring of Power while Gimli, Legolas and Aragorn search for the orc-captured Merry and Pippin. All along, nefarious wizard Saruman awaits the Fellowship members at the Orthanc Tower in Isengard.", :classification => "PG-13", :duration => 179, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg", :imdb_id => "tt0167261", :tmdb_id => 121, :youtube => "https://www.youtube.com/watch?v=LbfMDwc4azU"
m60 = Movie.create :title => "The Hobbit: An Unexpected Journey", :year => 2012, :overview => "Bilbo Baggins, a hobbit enjoying his quiet life, is swept into an epic quest by Gandalf the Grey and thirteen dwarves who seek to reclaim their mountain home from Smaug, the dragon.", :classification => "PG-13", :duration => 169, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/ysX7vDmSh5O19vFjAi56WL7l4nk.jpg", :imdb_id => "tt0903624", :tmdb_id => 49051, :youtube => "https://www.youtube.com/watch?v=SDnYMbYB-nU"
m61 = Movie.create :title => "The Revenant", :year => 2015, :overview => "In the 1820s, a frontiersman, Hugh Glass, sets out on a path of vengeance against those who left him for dead after a bear mauling.", :classification => "R", :duration => 157, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/oXUWEc5i3wYyFnL1Ycu8ppxxPvs.jpg", :imdb_id => "tt1663202", :tmdb_id => 281957, :youtube => "https://www.youtube.com/watch?v=LoebZZ8K5N0"
m62 = Movie.create :title => "Birdman", :year => 2014, :overview => "A fading actor best known for his portrayal of a popular superhero attempts to mount a comeback by appearing in a Broadway play. As opening night approaches, his attempts to become more altruistic, rebuild his career, and reconnect with friends and family prove more difficult than expected.", :classification => "R", :duration => 120, :image => "https://image.tmdb.org/t/p/w600_and_h900_bestv2/rSZs93P0LLxqlVEbI001UKoeCQC.jpg", :imdb_id => "tt2562232", :tmdb_id => 194662, :youtube => "https://www.youtube.com/watch?v=uJfLoE6hanc"
puts "#{ Movie.count } movies created."

Actor.destroy_all
movies = Movie.all
actor_count = 0;
movies.each do |movie|
  movie_tmdb_id = movie["tmdb_id"]
  tmdb_key = Rails.application.secrets.tmdb_api_key
  url_for_credits = "https://api.themoviedb.org/3/movie/#{movie_tmdb_id}/credits?api_key=#{tmdb_key}"
  credits = HTTParty.get url_for_credits
  actor_credits = credits["cast"][0..9] if credits["cast"].present?
  if actor_credits.present?
    actor_credits.each do |actor|
      actor_tmdb_id = actor["id"]
      if Actor.find_by(:tmdb_id => actor_tmdb_id).present?
        actor_to_add = Actor.find_by(:tmdb_id => actor_tmdb_id)
        movie.actors << actor_to_add
      else
        url_for_actor_details = "https://api.themoviedb.org/3/person/#{actor_tmdb_id}?api_key=#{tmdb_key}&language=en-US"
        actor_details = HTTParty.get url_for_actor_details
        new_actor = Actor.new
        new_actor.name = actor["name"] if actor["name"].present?
        new_actor.dob = actor_details["birthday"] if actor_details["birthday"].present?
        new_actor.pob = actor_details["place_of_birth"] if actor_details["place_of_birth"].present?
        new_actor.imdb_id = actor_details["imdb_id"] if actor_details["imdb_id"].present?
        new_actor.tmdb_id = actor_tmdb_id
        new_actor.image = ("https://image.tmdb.org/t/p/w600_and_h900_bestv2" + actor_details["profile_path"]) if actor_details["profile_path"].present?
        new_actor.save
        actor_count += 1
        movie.actors << new_actor
        sleep(1)
      end
    end
  end
end
puts "#{ Actor.count } actors created."
puts "Actors and Movies."

List.destroy_all
l1 = List.create :name => "Favourite Movies", :category => 'Movies', :private => false
l2 = List.create :name => "Favourite Actors", :category => 'Actors', :private => false
l3 = List.create :name => "Favourite Directors", :category => 'Directors', :private => false
l4 = List.create :name => "Favourite Movies", :category => 'Movies', :private => false
l5 = List.create :name => "Favourite Actors", :category => 'Actors', :private => false
l6 = List.create :name => "Favourite Directors", :category => 'Directors', :private => false
l7 = List.create :name => "Favourite Movies", :category => 'Movies', :private => true
l8 = List.create :name => "Favourite Actors", :category => 'Actors', :private => true
l9 = List.create :name => "Favourite Directors", :category => 'Directors', :private => true
puts "#{ List.count } lists created."

u1.lists << l1 << l2 << l3
u2.lists << l4 << l5 << l6
u3.lists << l7 << l8 << l9
puts "Users and Lists."

# Associations #################################################################
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
d11.movies << m57 << m58 << m59 << m60
d12.movies << m61 << m62
puts "Directors and Movies."

m1.genres << g1 << g11 << g2
m2.genres << g4 << g2 << g5
m3.genres << g1 << g7 << g2 << g6
m4.genres << g1 << g4 << g5
m5.genres << g1 << g2 << g6 << g7
m6.genres << g2 << g8 << g6
m7.genres << g1 << g7 << g2
m8.genres << g8 << g6
m9.genres << g9 << g2
m10.genres << g7 << g2 << g10 << g8
m11.genres << g2 << g10
m12.genres << g1 << g2 << g6 << g11
m13.genres << g7 << g6
m14.genres << g1 << g7
m15.genres << g7 << g2 << g9
m16.genres << g2 << g6 << g8
m17.genres << g2 << g6 << g7
m18.genres << g2
m19.genres << g2 << g9 << g7
m20.genres << g2 << g3
m21.genres << g4 << g5
m22.genres << g2 << g3
m23.genres << g2 << g6
m24.genres << g2 << g1 << g6 << g3
m25.genres << g4 << g6 << g5
m26.genres << g9 << g2
m27.genres << g2 << g7
m28.genres << g1 << g6 << g5 << g8
m29.genres << g2 << g3 << g11
m30.genres << g4 << g5
m31.genres << g4 << g15 << g6
m32.genres << g2
m33.genres << g7 << g6 << g8
m34.genres << g7 << g2 << g6
m35.genres << g7 << g2 << g8 << g6
m36.genres << g2
m37.genres << g8 << g6 << g2
m38.genres << g6 << g7 << g8 << g2
m39.genres << g14 << g2 << g6 << g8 << g14
m40.genres << g2 << g4 << g5
m41.genres << g4 << g2 << g1
m42.genres << g5 << g4 << g8
m43.genres << g1 << g2 << g6
m44.genres << g1 << g4 << g2
m45.genres << g1 << g2 << g4 << g3 << g11
m46.genres << g1 << g2 << g4
m47.genres << g5 << g2 << g6
m48.genres << g1 << g4 << g14 << g5
m49.genres << g2 << g13 << g6
m50.genres << g1 << g6 << g5
m51.genres << g1 << g4 << g5 << g2
m52.genres << g1 << g4 << g5
m53.genres << g1 << g4 << g9 << g14
m54.genres << g9 << g11 << g2
m55.genres << g1 << g5 << g4
m56.genres << g4 << g1 << g5
m57.genres << g4 << g14 << g1
m58.genres << g4 << g14 << g1
m59.genres << g4 << g14 << g1
m60.genres << g4 << g14 << g1
m61.genres << g10 << g2 << g4
m62.genres << g2 << g9
puts "Genres and Movies."

l1.movies << m2 << m3 << m10 << m17 << m38 << m44 << m45 << m46 << m47 << m48 << m23
l3.directors << d1 << d2 << d3 << d10 << d5 << d7

l4.movies << m35 << m38 << m23 << m4 << m32 << m12 << m5 << m9 << m11
l6.directors << d1 << d5 << d7 << d8 << d4 << d3

l7.movies << m4 << m19 << m22 << m2 << m3 << m50 << m44 << m45 << m46 << m47 << m48 << m23
l9.directors << d2 << d4 << d9 << d12 << d11
puts "Lists and Movies."
