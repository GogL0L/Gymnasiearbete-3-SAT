(TeX-add-style-hook
 "arbete"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "swedish")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "amsmath"
    "amssymb"
    "amscd"
    "amsthm"
    "amsfonts"
    "graphicx"
    "hyperref"
    "babel")
   (LaTeX-add-labels
    "sec:org64bdd7c"
    "sec:orgba30a8e"
    "sec:org5bb0b9b"
    "sec:org544df08"
    "sec:orgd2aab77"
    "sec:orgdd125d4"
    "sec:org9cf9e5b"
    "sec:org13027e6"
    "sec:org438cfeb"
    "sec:org4a4f1a3"
    "sec:orgb41f60d"
    "sec:org76d3c56"
    "sec:org2c04fd8"
    "sec:orga0176f1"
    "sec:orge2efa3b"
    "sec:orgd8259cc"
    "sec:orgfff88ab"
    "sec:org9d0a48a"
    "sec:org8a5ca6e"
    "sec:org8d5561b"
    "sec:org55f9397"
    "sec:orgaeb0bc5"
    "sec:org9aab57f"
    "sec:org89108cf"
    "sec:orgc10c2ab"
    "sec:org65c33ec"
    "sec:org8efc0ec"
    "sec:org622a6d5"
    "sec:org093bd6c"
    "sec:org089576d"
    "sec:org5a1c0f0"
    "sec:org8338cfa"
    "sec:org64a0280"
    "sec:org911f5a3"
    "sec:org459004d")
   (LaTeX-add-amsthm-newtheorems
    "theorem"
    "definition"
    "lemma"
    "proposition"
    "corollary"
    "example"))
 :latex)

