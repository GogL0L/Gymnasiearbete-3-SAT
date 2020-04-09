(TeX-add-style-hook
 "arbete"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
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
    "sec:org1d86332"
    "sec:org2073c1a"
    "sec:org6ab3374"
    "sec:org6e81812"
    "sec:org86ed8d4"
    "sec:orge571083"
    "sec:orgad0db53"
    "sec:orgb03441e"
    "sec:orgc88c63a"
    "sec:orgb6f265e"
    "sec:org9ee1b01"
    "sec:org9afa89b"
    "sec:org85403bc"
    "sec:orgbc85b98"
    "sec:org7cf406b"
    "sec:org3e22e03"
    "sec:org3a4f7ea"
    "sec:org4389528"
    "sec:org2e40f1e"
    "sec:orgaed94f5"
    "sec:org229e890"
    "sec:org0b41e8c"
    "sec:org8bc8527"
    "sec:orgc85ca46"
    "sec:org9c9ca05"
    "sec:org6a13527"
    "sec:org3afd24f"
    "sec:orgca6f8d3"
    "sec:orga22eb0e"
    "sec:org45bc771"
    "sec:orgc11c65d"
    "sec:org5aa3f17"
    "sec:orgdd02eb6"
    "sec:org6fdb3bb"
    "sec:orga66736f"
    "sec:org3de209f"
    "sec:org6a1d168"
    "sec:org4869e8f"
    "sec:org480d8f3"
    "sec:orgfbf2d4b"
    "sec:org99486c8"
    "sec:org7c02cee"
    "sec:org664d262"
    "sec:orgec1d225"
    "sec:org45977ab"
    "sec:org7033c50"
    "sec:org6824ed3"
    "sec:org139c741"
    "sec:orged1fe25"
    "sec:orgb7cc8ed"
    "sec:orgb4193fa"
    "sec:org867bd73"
    "sec:orgf3746df"
    "sec:org1360f91"
    "sec:orgb1fc944"
    "sec:org03ab628"
    "sec:orgcbb362b"
    "sec:org1de9b67"
    "sec:org5c7f9cb"
    "sec:org67fe8f8"
    "sec:orgdaaa714"
    "sec:org43bc716"
    "sec:org97024b7")
   (LaTeX-add-amsthm-newtheorems
    "theorem"
    "definition"
    "lemma"
    "proposition"
    "corollary"
    "example"))
 :latex)

