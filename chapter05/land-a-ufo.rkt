#lang racket

; 2htdp stands for: How to Design Programs, Second Edition
; See: https://htdp.org
(require 2htdp/universe
         2htdp/image)

(define WIDTH 480)
(define HEIGHT 600)
(define UFO (bitmap "img/ufo.96x96.png"))

(define (update model)
  (+ model 3))

(define (is-touching-ground model)
  (>= model 300))

(define (view model)
  (place-image UFO (/ WIDTH 2) model (empty-scene WIDTH HEIGHT)))

(big-bang 0 (on-tick update) (to-draw view) (stop-when is-touching-ground))
