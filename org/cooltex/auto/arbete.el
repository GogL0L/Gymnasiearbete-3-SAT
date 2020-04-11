(TeX-add-style-hook
 "arbete"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "swedish")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-environments-local "python")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
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
    "listings"
    "babel"
    "color")
   (TeX-add-symbols
    '("pythonexternal" ["argument"] 1)
    '("pythoninline" 1)
    "pythonstyle")
   (LaTeX-add-labels
    "sec:orgbe41ca8"
    "sec:orga1372b1"
    "sec:org3353fd4"
    "sec:orgc9ffa90"
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
    "thm:3SATNP"
    "sec:org6161cc6"
    "sec:orgcd44be6"
    "sec:org8cc7001"
    "sec:org1de5c74"
    "sec:orgeafac22"
    "sec:org18a3066"
    "sec:org28324b6"
    "sec:org8ed5c31"
    "sec:orgdfcdd28"
    "sec:org464171c"
    "sec:orgef0aac4"
    "sec:org4513cda"
    "sec:orgcf55e18"
    "sec:org6bd011b"
    "sec:org7998dae"
    "sec:orga5ab640"
    "sec:org544acf4"
    "sec:org066f031"
    "sec:org9f440fc"
    "sec:org46d048e"
    "sec:org5c10dba"
    "sec:orgea8a832"
    "sec:orgf579d70"
    "sec:org82b5e4d"
    "sec:orgbbe4221"
    "sec:org9a327ad"
    "sec:orge29779b"
    "sec:org1ccbaf6"
    "sec:org6061b9e"
    "sec:org605595e"
    "sec:orgcfac4bf"
    "sec:orgfce96f7"
    "sec:orgfbf28b4"
    "sec:org470e243"
    "sec:orga8fa3f1"
    "sec:org2ab40d9"
    "sec:org3640147"
    "sec:org9281fc4"
    "sec:orgb590924"
    "sec:orge905b72"
    "sec:orge3de517"
    "sec:org4b575f0"
    "sec:orgfa744f9"
    "sec:org457983a"
    "sec:org4076e3d"
    "sec:org2e3ea7d"
    "sec:org022bc4a"
    "sec:org27cdb25"
    "sec:orgd3f42b4"
    "sec:org2bd4e6b"
    "sec:org4473951"
    "sec:orgd46f53e"
    "sec:orge3d24f7"
    "sec:org6dbc390")
   (LaTeX-add-amsthm-newtheorems
    "theorem"
    "definition"
    "lemma"
    "proposition"
    "corollary"
    "example"))
 :latex)

