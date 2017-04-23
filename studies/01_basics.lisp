(print "1 setq: variable assignment")
; http://www.jtra.cz/stuff/lisp/sclr/setq.html
; http://clhs.lisp.se/Body/s_setq.htm
(setq a 1 b (+ 1 a) c (+ a b))
(print (list 'a a 'b b 'c c))

(print "2 null: check if NIL or empty list")
; http://www.jtra.cz/stuff/lisp/sclr/null.html
; http://clhs.lisp.se/Body/f_null.htm
; Returns t if object is the empty list; otherwise, returns nil.
(print (list 'nil-var (null NIL)
             't-var (null T)
             'empty-list (null ())
             'non-empty-list (null '(a b))))
