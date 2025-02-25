;; Moral Axiom Generation Contract

(define-map axioms
  { id: uint }
  { principle: (string-ascii 64) }
)

(define-data-var next-id uint u0)

(define-public (add-axiom (principle (string-ascii 64)))
  (let ((id (var-get next-id)))
    (var-set next-id (+ id u1))
    (ok (map-set axioms { id: id } { principle: principle }))
  )
)

(define-read-only (get-axiom (id uint))
  (map-get? axioms { id: id })
)

