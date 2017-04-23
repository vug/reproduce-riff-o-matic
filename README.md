# Reproduction of "Rough Raga Riffs"

This repository is to study [Brad Garton](http://sites.music.columbia.edu/brad/)'s great algorithmic composition [Rough Raga Riffs](http://sites.music.columbia.edu/brad/music/index.html#Rough_Raga_Riffs).

It was composed in 1991. This is the original [program note]()

> Rough Raga Riffs is the sonic output of my attempt to grow a wailin'
heavy-metal guitarist in my NeXT computer.  For this piece, however, the
heavy metal seems to have been mined somewhere in South India -- hence the
'raga' in the title.

> The synthesized guitar sounds come from a remarkable variation of the
Karplus-Strong (or "plucked-string") digital synthesis algorithm written by
Charles Sullivan.  The 'virtual guitarist' you hear performing is actually a
LISP program designed to improvise suitably "wailin'" guitar riffs when
given a simple scale.  I'm able to coerce different sorts of melodies and
playing techniques by holding long conversations in LISP with my home-grown
guitar player, but the actual note-by-note musical choices (pitch, rhythm,
articulation, etc.) are being made by something other than me.
And I swear I can hear it practicing late at night...

The score is generated using Common Lisp code.
Then that score is fed into [Cmix](http://www.musicainformatica.org/topics/cmix.php) a computer music framework made by [Paul Lansky](http://paul.mycpanel.princeton.edu/) himself.

# Generating score

* Install [CLISP](http://www.clisp.org/) "an ANSI Common Lisp Implementation". Latest binaries from 2010 are at [sourceforge](https://sourceforge.net/projects/clisp/files/clisp/2.49/).
* Get the [piece-o-matic](http://sites.music.columbia.edu/brad/software/index.html#riff-o-matic) code and extract to a folder, say `riff-o-matic`.
* Get `utils.lisp` from Garton's [software link](http://sites.music.columbia.edu/brad/software/index.html) and move into the same folder.

The way I was able to generate some score is to call `riff-o-matic(nnotes)` in CLISP interpreter to generate `nnotes` notes.
But first some small amount of changes such as setting the `utils.lisp` file correctly and redefining `calcsteps` function is needed, which were done in this repo.
