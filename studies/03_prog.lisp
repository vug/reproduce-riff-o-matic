(print "1 prog: execute commands in order")
; http://www.jtra.cz/stuff/lisp/sclr/progn.html
; http://clhs.lisp.se/Body/s_progn.htm
(prog ()
      (print 'symbol-name)
      (print "ali veli"))

(print "2 prog: variable initialization")
(prog (x (y 0))
      (print x)
      (print y)
      (setq y (+ y 1))
      (print y))

(print "3 prog: loop")
(prog ((n 0))
      loop
      (cond
        ((= n 10) (return n))
        (t (setq n (+ n 1))
           (print n)
           (go loop))))
