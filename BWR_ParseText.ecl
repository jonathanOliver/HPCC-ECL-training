IMPORT advEcl.Movies.File_movie as Movies;


/*

$ex for $ale (2003) (V)					2003
$pent (2000)						2000
$ucces Part One (1986) (TV)				1986
'60s Pop Rock Reunion (2004) (TV)			2004
'60s
'68 (1988)						1988
'70s Celebration: The Beat Is Back
'70s: The Decade That Changed Television
'88 Dodge Aries (2002)					2002
'93 jie tou ba wang (1993)				1993
*/

//60s 70s

PATTERN Year := PATTERN ('\\(.+[0-9]\\)');
PATTERN withYear := OPT(Year);
TOKEN RegexFilmeName := PATTERN('.+[A-Za-z]');

lmovie := Record
	STRING Title := MATCHTEXT(RegexFilmeName[1]) ;
	STRING TitleYear := MATCHTEXT();
	STRING VidtYear := MATCHTEXT();
	STRING ReleaseYear := MATCHTEXT();
	STRING Comment := MATCHTEXT();
END;



movie := dataset(lmovie);
// Name:= PARSE(ds,line,RegexFilmeName)
 //MOVIES BRUTO
OUTPUT (movie);




