(defun riff-o-matic (nnotes)
  (prog ((count 0))
        (princ "output file? ")
        (setq OUTFILE (outfile (read)))
        (setq START 0)
        (setq PREVPITCH 4.07)
        (setq WORKRHYTHS RHYTHMS)
        (loop repeat nnotes do
          (generator (eval (getel INFLECTIONS))))
       	(close OUTFILE)))

(defun generator (inflist)
  (map 'nil 'eval inflist))
