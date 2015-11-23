(define (lookup give-key set-of-records)
  (cond ((null? set-of-records) false)
        ((equal? give-ken (key (car set-of-records)))
         (car set-of-records))
        (else (lookup give-ken (cdr set-of-records)))))

(define (look-up given-key set-of-records)
  (if (null? set-of-records)
      false
      (let ((record (entry set-of-records)))
        (cond ((= given-key (key record)) record)
              ((< given-key (key record))
               (look-up given-key (left-branch set-of-records)))
              ((> given-key (key record))
               (look-up given-key (right-branch set-of-records)))))))