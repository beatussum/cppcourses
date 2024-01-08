\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cppcourses}[My custom LaTeX beamer]

\LoadClass[aspectratio = 1610]{beamer}

\RequirePackage[french, strings = unicode]{babel}
\RequirePackage{csquotes}
\RequirePackage[useregional]{datetime2}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{cancel}
\RequirePackage{diagbox}
\RequirePackage{fixmath}
\RequirePackage{listings}
\RequirePackage{mathtools}
\RequirePackage{multirow}
\RequirePackage{nicefrac}
\RequirePackage{siunitx}
\RequirePackage{svg}

\RequirePackage{fontspec}
\RequirePackage[math-style = french, bold-style = ISO]{unicode-math}

\usetheme{Madrid}

\setbeamercovered{transparent}
\setbeamertemplate{caption}[numbered]

\AtBeginSubsection[]{
  \begin{frame}
    \vfill
    \centering

    \begin{beamercolorbox}[
      sep = 8pt, center, shadow = true, rounded = true
    ]{title}

      \usebeamerfont{title}\insertsectionhead\par
      \usebeamerfont{subtitle}\insertsubsectionhead\par

    \end{beamercolorbox}

    \vfill
  \end{frame}
}

\AtBeginSubsubsection[]{
  \begin{frame}
    \vfill
    \centering

    \begin{beamercolorbox}[
      sep = 8pt, center, shadow = true, rounded = true
    ]{title}

      \usebeamerfont{title}\insertsectionhead\par
      \usebeamerfont{subtitle}\insertsubsectionhead\par
      \usebeamerfont{subtitle}\insertsubsubsectionhead\par

    \end{beamercolorbox}

    \vfill
  \end{frame}
}

\languagepath{French}
\uselanguage{French}

\setmainfont[
  ItalicFont = NewCM10-Italic.otf,
  BoldFont = NewCM10-Bold.otf,
  BoldItalicFont = NewCM10-BoldItalic.otf,
  SmallCapsFeatures = {Numbers = OldStyle}
]{NewCM10-Regular.otf}

\setsansfont[
  ItalicFont = NewCMSans10-Oblique.otf,
  BoldFont = NewCMSans10-Bold.otf,
  BoldItalicFont = NewCMSans10-BoldOblique.otf,
  SmallCapsFeatures = {Numbers = OldStyle}
]{NewCMSans10-Regular.otf}

\setmonofont[
  ItalicFont = NewCMMono10-Italic.otf,
  BoldFont = NewCMMono10-Bold.otf,
  BoldItalicFont = NewCMMono10-BoldOblique.otf,
  SmallCapsFeatures = {Numbers = OldStyle}
]{NewCMMono10-Regular.otf}

\setmathfont{NewCMMath-Regular.otf}

\newcommand<>{\myanswer}[1]{\visible#2{\textcolor{orange}{#1}}}
\newcommand{\myanswerize}[1]{\color{orange}}
\newcommand{\mydef}[1]{\textcolor{red}{#1}}
\newcommand{\myhence}{\text{d'où }}
\newcommand{\myimp}[1]{\textcolor{teal}{#1}}
\newcommand<>{\myissue}[1]{\action#2{\textcolor{red}{Problème} #1}}
\newcommand{\mykeyword}[1]{\texttt{#1}}
\newcommand<>{\mywarn}[1]{\action#2{\textcolor{red}{Attention} #1}}

\AtBeginDocument{\mathcode`\;=\numexpr\mathcode`\;-\string"4000\relax}

\renewcommand{\arraystretch}{1.5}

\hypersetup{bookmarksdepth = 4}

\lstset{
    commentstyle = \color{teal},
    keywordstyle = \color{magenta},
    numberstyle = \tiny\color{gray},
    stringstyle = \color{purple},
    basicstyle = \tiny,
    breakatwhitespace = false,
    breaklines = true,
    captionpos = b,
    extendedchars = true,
    keepspaces = true,
    numbers = left,
    numbersep = 5pt,
    showspaces = false,
    showstringspaces = false,
    showtabs = false,
    tabsize = 4,
    xleftmargin = 0.5cm
}

\sisetup{
    locale = FR,
    group-digits = integer,
    group-minimum-digits = 3,
    input-complex-root,
    list-units = single,
    per-mode = power-positive-first,
    range-units = single,
    retain-explicit-plus,
    separate-uncertainty,
    separate-uncertainty-units = single,
    table-alignment-mode = format,
    table-auto-round,
    uncertainty-mode = separate
}

\author[R.--L. Mattéo]{ROSSILLOL--LARUELLE Mattéo}
