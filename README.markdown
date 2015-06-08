blaze-all
============

This is not a development repo. The branches outlined below are only
here so the developers can try the benchmarks for themselves and to
document in one place the CSS extensions to the blaze-markup and
blaze-html repos.

Purpose
-------

To demonstrate a few things:

- blaze-markup benchmark performance seems to degrade with
  blaze-builder >= 0.4.0.0
- a modification to renderXXX that restores benchmark performance to
  blaze-builder-0.3.3.4 speeds
- a proposed addition to blaze-markup and blaze-html to add syntactic
  sugar and builders for CSS style and class attributes


Roadmap
-------



    master
    |
    |
    + use cabal bench to enable CPP macros in blaze-builder branches
    + reports/master-0.7.0.2.html
    |
    |\
    | \
    |  \
    |   blaze-builder-0.3.3.4
    |   |
    |   + add blaze-builder-0.3.3.4
    |   + reports/blaze-builder-0.3.3.4.html
    |\
    | \
    |  \
    |   blaze-builder-0.4.0.1
    |   |
    |   + with blaze-builder-0.4.0.1
    |   + reports/blaze-builder-0.3.3.4.html
    |   + reports/blaze-builder-0.4.0.1.html
     \
      \
       \
        go-atts
        |
        + make go-attrs changes
        + reports/blaze-builder-0.3.3.4.html
        + reports/blaze-builder-0.4.0.1.html
        + reports/go-attrs.html
         \
          \
           \
            css
            |
            + add css functionality
            + reports/css.html
            |
            |
            + add blaze-html
            |
            |
            + add blaze-html css
            |
            |
            + add samples/ example code using CSS functionality


Credits
-------

Authors:

- Jasper Van der Jeugt
- Simon Meier
- Deepak Jois
- Leon P Smith
- Michael Hatfield
