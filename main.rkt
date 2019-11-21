#lang racket

(require 
  website/bootstrap
  "./metacoders-dot-org-reno-site/main.rkt")

(render (pages) #:to "out")
