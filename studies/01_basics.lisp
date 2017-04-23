(print "1 setq: variable assignment")
; http://www.jtra.cz/stuff/lisp/sclr/setq.html
; http://clhs.lisp.se/Body/s_setq.htm
(setq a 1 b (+ 1 a) c (+ a b))
(print (list 'a a 'b b 'c c))
