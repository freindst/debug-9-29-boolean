#lang racket
(require "utility.rkt")
(require "runner.rkt")
(require "parcer.rkt")
(require "variable_env.rkt")

(define env '((global (a 1) (b 2) (c 5))))

(define sample-code
  '(register player
             (class Person
               (fields
                (name
                 age)
                )
               (constructor
                (name age)
                ((assign (this name) name)
                 (assign (this age) age)
                 )
                )
                (methods
                 (
                  (call () (print (this name)))
                  )
                 )
                )
               )
             )
(displayln (neo-parser sample-code))
;(define parsed-neo-code (neo-parser sample-code))
;(run-neo-parsed-code parsed-neo-code env)
