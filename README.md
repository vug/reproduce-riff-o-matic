# Reproduction of "Rough Raga Riffs"

This repository is to study [Brad Garton](http://sites.music.columbia.edu/brad/)'s great algorithmic composition [Rough Raga Riffs](http://sites.music.columbia.edu/brad/music/index.html#Rough_Raga_Riffs).

It was composed in 1991. This is the original [program note](http://sites.music.columbia.edu/brad/music/notes/Rough_Raga_Riffs.html)

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

* On command line, go to `riff-o-matic` folder. Run `clisp` interpreter.
* Inside the interpreter run `(load 'interpreter.lisp)` command.
* This loads necessary function definitions.
* Generate some notes via `(riff-o-matic 10)`.
* It asks for a file name.
* Say `test_score.sco`.
* It'll generate the file with CMIX commands.

This is my output

```Cmix
FRET1(0 , 0.060093362 , 4.08 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(0.060093362 , 0.060093362 , 4.09 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(0.120186724 , 0.060093362 , 4.1 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(0.18028009 , 2.0717335 , 5.0 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(2.2520137 , 1.0627258 , 5.01 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(3.3147395 , 0.08079089 , 5.0000005 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(3.3955305 , 0.08079089 , 4.1100006 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
MAKEGEN(1 , 10 , 1024 , 1 , 0.1)
MAKEGEN(2 , 7 , 1000 , 0 , 100 , 1 , 200 , 0.7 , 50 , 0.95 , 150 , 0.8 , 125 , 0.7 , 75 , 0.9 , 200 , 0.5 , 100 , 0.89)
VFRET1(3.4763215 , 2.0521562 , 5.0 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1 , 5 , 7 , (CPSPCH( 5.0 ) * 0.02) , 0.174)
FRET1(5.5284777 , 0.5565672 , 5.01 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(6.085045 , 0.061817233 , 5.0000005 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(6.146862 , 0.061817233 , 4.1100006 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
MAKEGEN(1 , 10 , 1024 , 1 , 0.1)
MAKEGEN(2 , 7 , 1000 , 0 , 100 , 1 , 200 , 0.7 , 50 , 0.95 , 150 , 0.8 , 125 , 0.7 , 75 , 0.9 , 200 , 0.5 , 100 , 0.89)
VFRET1(6.208679 , 1.0616497 , 5.0 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1 , 5 , 7 , (CPSPCH( 5.0 ) * 0.02) , 0.864)
FRET1(7.270329 , 1.0403857 , 5.01 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
MAKEGEN(1 , 7 , 1000 , 1 , 25 , 0.97 , 75 , 1 , 100 , 0.95 , 50 , 0.99 , 500 , 0 , 100 , 0.05 , 75 , 0.02 , 25 , 0 , 50 , 0.2)
BEND1(8.310715 , 2.0735993 , 5.01 , 5.03 , 1 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
MAKEGEN(1 , 7 , 1000 , 0 , 75 , 0.03 , 25 , 0.01 , 350 , 1 , 450 , 0 , 50 , 0.02 , 25 , 0.01 , 25 , 0.03)
BEND1(10.384314 , 0.52708966 , 5.01 , 5.03 , 1 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(10.911404 , 0.085689664 , 5.0000005 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(10.997093 , 0.085689664 , 4.1100006 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(11.082783 , 0.5252182 , 5.0 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
FRET1(11.608001 , 2.0566807 , 5.01 , 20 , 1.0 , 15 , 0.07 , 7.0 , 0 , 1)
```

## CLISP references

* [Common Lisp HyperSpec \(TM\)](http://clhs.lisp.se/Front/index.htm)
* [Simplified Common Lisp reference](http://www.jtra.cz/stuff/lisp/sclr/index.html)

# Rendering score into sound

It looks like Cmix is not available anymore.

* It is not on [Lansky's software page](http://paul.mycpanel.princeton.edu/software.html)
* Some pages have link to this URL http://www.music.princeton.edu/winham/PPSK/cmixsource.html as where the source code is. But it does not exist anymore.
* There is this [COS/MUS 325: Transforming Reality by Computer](http://www.cs.princeton.edu/courses/archive/spr99/cs325/) course given at Princeton in Spring 1999 that mention CMIX in its [factsheet > tools](http://www.cs.princeton.edu/courses/archive/spr99/cs325/tools.html) section.

Garton made its real-time version called [RTcmix](http://rtcmix.org/).
We'll try to modify the score so that it'll run on RTcmix.
