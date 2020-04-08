(TeX-add-style-hook
 "arbete"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "swedish")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "babel"
    "amsthm"
    "amssymb")
   (LaTeX-add-labels
    "sec:orgb795bf2"
    "sec:org54d8a01"
    "sec:org173b434"
    "sec:orgdaa4786"
    "sec:org6ee4312"
    "sec:org8ba5e50"
    "sec:org093e00f")
   (LaTeX-add-environments
    "theorem"
    "definition"
    "lemma"
    "proposition"
    "corollary"
    "example"))
 :latex)

