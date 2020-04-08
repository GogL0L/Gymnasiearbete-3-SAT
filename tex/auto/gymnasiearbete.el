(TeX-add-style-hook
 "gymnasiearbete"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "swedish")))
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
    "sec:Introduktion"
    "sub:pnp"
    "sec:Komplexitet"
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
    "eg:3sat"
    "thm:3SATNP")
   (LaTeX-add-amsthm-newtheorems
    "theorem"
    "definition"
    "lemma"
    "proposition"
    "corollary"
    "example"))
 :latex)

