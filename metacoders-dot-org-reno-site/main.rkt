#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-reno-lib
         metacoders-dot-org-lib)

(require website-js/components/remote)

(define (index)
  (page index.html
	(city-page-dynamic
	  #:city-name "Reno, NV"
	  #:banner-url (prefix/pathify reno-banner-path)
	  #:alt-tag "City of Reno, Nevada with busy streets and welcome sign"
	  (remote 
	    ;TODO: Get charlotte looking/working the same, but with all the data defined over in mc-data/views/cities...
	    ;"http://localhost:8080/city/pos/reno"

	    ;If you want the POS to be fully dynamic, point to our backend. 
	    ;"https://data.metacoders.org/city/pos/reno"

	    ;But it's better to use a cached version (more robust -- i.e. if our backend isn't up)

	    "https://mc-social-media.s3-us-west-1.amazonaws.com/static-points-of-sale/reno.html"
	    ))
        ))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


