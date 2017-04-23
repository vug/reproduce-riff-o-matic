(defun riff-o-matic (nnotes)
  (prog ((count 0))
        (princ "output file? ")
        (setq OUTFILE (outfile (read)))
        (setq START 0)
        (setq PREVPITCH 4.07)
        (setq WORKRHYTHS RHYTHMS)
   again
        (cond
          ((= count nnotes) (close OUTFILE)
                            (return t))
          (t (generator (eval (getel INFLECTIONS)))
             (setq count (+ count 1))
             (go again)))))

(defun generator (inflist)
  (prog ()
        (cond
          ((null inflist) (return t))
          (t (eval (car inflist))
             (generator (cdr inflist))))))
