#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-reno-lib
         metacoders-dot-org-lib)

(define (index)
  (page index.html
        (city-page
         #:city-name "Reno, NV"
         #:banner-url (prefix/pathify reno-banner-path)
          )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


