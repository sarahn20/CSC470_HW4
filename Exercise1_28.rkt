(define merge
  (lambda (loi1 loi2)
    (cond
      ((null? loi1) loi2)
      ((null? loi2) loi1)
      ((<= (car loi1)(car loi2))(cons (car loi1)(merge (cdr loi1) loi2)))
      ((<= (car loi2)(car loi1))(cons (car loi2)(merge loi1(cdr loi2)))))))
