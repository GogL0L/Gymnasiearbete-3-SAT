(TeX-add-style-hook
 "gymnasiearbete"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "swedish")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "babel"
    "amsthm"
    "amssymb")
   (LaTeX-add-labels
    "sec:Introduktion"
    "sec:Komplexitet"
    "sub:pnp"
    "sub:prop_log"
    "def:bool_var"
    "def:and"
    "def:or"
    "eg:sky"
    "def:neg"
    "def:dis"
    "eg:dis"
    "def:con"
    "sub:3sat"
    "def:3sat"
    "eg:3sat")
   (LaTeX-add-amsthm-newtheorems
    "theorem"
    "definition"
    "lemma"
    "proposition"
    "corollary"
    "example"))
 :latex)

