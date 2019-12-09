#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-reno-lib
         metacoders-dot-org-lib)

(define (index)
  (page index.html
        (city-page
         #:city-name "Reno"
         #:banner-url "https://live.staticflickr.com/2916/14377709314_0ccfdd06cf_k.jpg" ;"https://live.staticflickr.com/4414/36082399434_18e1e4bdff_o.jpg"
          )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


