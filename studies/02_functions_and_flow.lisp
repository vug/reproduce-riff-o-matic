(print "1 cond: conditional flow")
; http://www.jtra.cz/stuff/lisp/sclr/cond.html
; http://clhs.lisp.se/Body/m_cond.htm
(cond
  ((> 3 2) (print "3>2"))
  (t (print "else")))  ; else is added by an alway true last condition
(cond
  ((> 2 4) (print "2>4"))
  ((> 5 4) (print "5>4"))
  (t (print "else")))
(cond
  ((> 2 4) (print "2>4"))
  ((> 3 4) (print "3>4"))
  (t (print "else")))
