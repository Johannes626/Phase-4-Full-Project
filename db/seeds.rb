puts "Destroying prevoius seeds"

SavedMovie.destroy_all
User.destroy_all
Movie.destroy_all

puts "Creating Users"

user1 = User.create(name: "Johannes", username: "Jojo", email: "jojo@test.net", password: "test")
user2 = User.create(name: "Onelis", username: "onelisyarid", email: "onelisyarid@test.net", password: "test")
user3 = User.create(name: "Ryan", username: "atom", email: "atom@test.net", password: "test")
user4 = User.create(name: "Dilan", username: "Balrog", email: "balrog@test.net", password: "test")
user5 = User.create(name: "Angel", username: "Dogor", email: "dogor@test.net", password: "test")

puts "Creating Movies"

movie1 = Movie.create(title: "The Dark Knight (2008)", image: "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UY67_CR0,0,45,67_AL_.jpg", description: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.")
movie2 = Movie.create(title: "The Godfather (1972)", image: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR1,0,45,67_AL_.jpg", description: "The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.")
movie3 = Movie.create(title: "Pulp Fiction (1994)", image: "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg", description: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.")
movie4 = Movie.create(title: "Forrest Gump (1994)", image: "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR0,0,45,67_AL_.jpg", description: "The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.")
movie5 = Movie.create(title: "The Matrix (1999)", image: "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg", description: "When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.")
movie6 = Movie.create(title: "Saving Private Ryan (1998)", image: "https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UY67_CR0,0,45,67_AL_.jpg", description: "Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.")
movie7 = Movie.create(title: "Terminator 2: Judgment Day (1991)", image: "https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg", description: "A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her ten-year-old son John from a more advanced and powerful cyborg.")
movie8 = Movie.create(title: "Interstellar (2014)", image: "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg", description: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.")
movie9 = Movie.create(title: "Spirited Away (2001)", image: "https://m.media-amazon.com/images/M/MV5BMjlmZmI5MDctNDE2YS00YWE0LWE5ZWItZDBhYWQ0NTcxNWRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg", description: "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.")
movie10 = Movie.create(title: "The Silence of the Lambs (1991)", image: "https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY67_CR0,0,45,67_AL_.jpg", description: "A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.")

puts "Creating SavedMovies"

saved1 = SavedMovie.create(favorite: false, user: user1, movie: movie1)
saved2 = SavedMovie.create(favorite: false, user: user1, movie: movie2)
saved3 = SavedMovie.create(favorite: false, user: user2, movie: movie2)
saved4 = SavedMovie.create(favorite: false, user: user3, movie: movie3)
saved5 = SavedMovie.create(favorite: false, user: user4, movie: movie4)

puts "Seeding successful!"

