Playlister Basics
index pages
/songs
responds with a 200 status code (FAILED - 1)
displays a list of songs (FAILED - 2)
contains links to each song's show page (FAILED - 3)
/artists
responds with a 200 status code (FAILED - 4)
displays a list of artists (FAILED - 5)
contains links to each artist's show page (FAILED - 6)
/genres
responds with a 200 status code (FAILED - 7)
displays a list of genres (FAILED - 8)
contains links to each genre's show page (FAILED - 9)
show pages
/songs/:slug
responds with a 200 status code (FAILED - 10)
displays the song's artist (FAILED - 11)
displays the song's genres (FAILED - 12)
contains links to the artist's show page (FAILED - 13)
contains links to each genre's show page (FAILED - 14)
/artists/:slug
responds with a 200 status code (FAILED - 15)
displays the artist's songs (FAILED - 16)
displays the artist's genres (FAILED - 17)
contains links to each song's show page (FAILED - 18)
contains links to each genre's show page (FAILED - 19)
/genres/:slug
responds with a 200 status code (FAILED - 20)
displays the genre's artists (FAILED - 21)
displays the genre's songs (FAILED - 22)
contains links to each artist's show page (FAILED - 23)
contains links to each song's show page (FAILED - 24)

Song Forms
/songs/new
without an existing artist
creates a new artist on submit (FAILED - 25)
creates a new song on submit (FAILED - 26)
redirects to '/songs/:slug' after creation (FAILED - 27)
with an existing artist
does not create a new artist (FAILED - 28)
creates a new song and associates it with an existing artist (FAILED - 29)
redirects to '/songs/:slug' after creation (FAILED - 30)
/songs/:slug/edit
changing a song's artist
updates the song's artist (FAILED - 31)
renders to the song show page (FAILED - 32)
changing a song's genres
has a checkbox element on the form (FAILED - 33)
updates the song's genres (FAILED - 34)
renders to the song show page (FAILED - 35)

Artist
can be initialized (FAILED - 36)
can have a name (FAILED - 37)
has many songs (FAILED - 38)
can have many genres (FAILED - 39)
can slugify its name (FAILED - 40)
Class methods
given the slug can find an Artist (FAILED - 41)

Song
can initialize a song (FAILED - 42)
can have a name (FAILED - 43)
can have many genres (FAILED - 44)
has an artist (FAILED - 45)
can slugify its name (FAILED - 46)
Class methods
given the slug can find a song (FAILED - 47)

Genre
can initialize a genre (FAILED - 48)
has a name (FAILED - 49)
has many songs (FAILED - 50)
has many artists (FAILED - 51)
can slugify its name (FAILED - 52)
Class methods
given the slug can find a genre (FAILED - 53)
