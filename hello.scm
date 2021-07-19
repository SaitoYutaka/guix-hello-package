(use-modules (guix packages)
             (guix download)
             (guix git-download)
             (guix build-system gnu)
             (guix licenses))

(package
  (name "hello")
  (version "0.01")
  (source (origin
            (method git-fetch)
	    (uri (git-reference
		   (url "https://github.com/SaitoYutaka/guix-hello-package.git")
		   (commit "e044f7f7d42703c779687d7612448a07ff661826")))
            (sha256
             (base32
	       "0bnci0jgncasr7d7lx8m52nbz49scb7lhr5gf5xddrrz9ywfnqsz"))))
  (build-system gnu-build-system)
  (arguments
    `(#:make-flags (list (string-append "PREFIX=" (assoc-ref %outputs "out")))
      #:phases (modify-phases %standard-phases
      (delete 'configure)
      (delete 'check)
      )))
  (synopsis "Hello sample")
  (description
    "sample")
  (home-page "https://github.com/SaitoYutaka/guix-hello-package")
  (license gpl3+))

