(defun riff-o-matic-to-file (nnotes)
 "Generate riff into asked file."
  (let ()
    (princ "output file? ")
    (setq OUTFILE (outfile (read)))
    (riff-o-matic nnotes)
    (close OUTFILE)))

(defun riff-o-matic-to-stdout (nnotes)
  "Generate riff into stdout."
  (let ()
    (setq OUTFILE *standard-output*)
    (riff-o-matic nnotes)))

(defun riff-o-matic (nnotes)
  "Generate a riff of nnotes notes and send them to OUTFILE."
  (let ((count 0))
        (setq START 0)
        (setq PREVPITCH 4.07)
        (setq WORKRHYTHS RHYTHMS)
        (loop repeat nnotes do
          (generator (eval (getel INFLECTIONS))))))

(defun generator (inflist)
  (map 'nil 'eval inflist))
