%%
%% This is file `book.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% classes.dtx  (with options: `book')
%%
%% This is a generated file.
%%
%% Copyright 1993 1994 1995 1996 1997 1998 1999 2000 2001 2002 2003 2004 2005 2006
%% The LaTeX3 Project and any individual authors listed elsewhere
%% in this file.
%%
%% This file was generated from file(s) of the LaTeX base system.
%% --------------------------------------------------------------
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This file has the LPPL maintenance status "maintained".
%%
%% This file may only be distributed together with a copy of the LaTeX
%% base system. You may however distribute the LaTeX base system without
%% such generated files.
%%
%% The list of all files belonging to the LaTeX base distribution is
%% given in the file `manifest.txt'. See also `legal.txt' for additional
%% information.
%%
%% The list of derived (unpacked) files belonging to the distribution
%% and covered by LPPL is defined by the unpacking scripts (with
%% extension .ins) which are part of the distribution.
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{book}
              [2005/09/16 v1.4f
 Standard LaTeX document class]
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\newif\if@mainmatter \@mainmattertrue

% set paper size (B5)
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}

% set type size (font size)
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}

% set one-side or two-side printing
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}

% final version (as opposed to draft)
\DeclareOption{final}{\setlength\overfullrule{0pt}}

% to explicitely generate a title page
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}

% whether or not a chapter must start on a right-hand page request one.
\DeclareOption{openright}{\@openrighttrue} % recommended for books
\DeclareOption{openany}{\@openrightfalse}

% one column vs. two-column layout
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}

% equation number to the left
\DeclareOption{leqno}{\input{leqno.clo}}

% flush left display (e.g., adds left margin to equations)
\DeclareOption{fleqn}{\input{fleqn.clo}}

% hanging indentation to bibliography
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}

% set default options (defined above)
\ExecuteOptions{letterpaper,10pt,twoside,onecolumn,final,openright}
\ProcessOptions


\input{bk1\@ptsize.clo}

% what to do when two lines are too close
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}

% multiplier for \baselineskip (0 does not stretch lines)
\renewcommand\baselinestretch{} % empty so that \lineskip is preserved

% extra vertical space between paragraphs
\setlength\parskip{0\p@ \@plus \p@}

% modify behaviour of \nolinebreak and \nopagebreak
% (these functions discourage breaking pages and lines)
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

% maximum part of a text page that can be occupied by floats at the top and bottom
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}

\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}

% maximum number of floats that can appear on any text page.
\setcounter{totalnumber}{3}

% minimum part of a text page that has to be occupied by text
\renewcommand\textfraction{.2}

% minimum part of a page that has to be occupied by floating objects before a ‘float page’ is produced
\renewcommand\floatpagefraction{.5}

% maximum number of two-column floats that can appear on the top of a two-column text page
\setcounter{dbltopnumber}{2}

% maximum part of a two-column text page that can be occupied by two-column floats at the top
\renewcommand\dbltopfraction{.7}

% minimum part of a page that has to be occupied by two-column wide floating objects before a ‘float page’ is produced
\renewcommand\dblfloatpagefraction{.5}
%%%

\def\@subtitle{}
\def\subtitle#1{\def\@subtitle{#1}}
\def\@thyear{}
\def\thyear#1{\def\@thyear{#1}}
\def\@department{}
\def\department#1{\def\@department{#1}}
\def\@supervisor{}
\def\supervisor#1{\def\@supervisor{#1}}


% page style headings has to be different for two-sided printing than for one-sided printing
% define headings page stle (\ps@foo), for odd and even pages
\def\ps@headings{%
    % the running feet are empty in this page style, the running head contains the page number and one of the marks.
    \let\@oddfoot\@empty\let\@evenfoot\@empty % running foot (empty)
    \def\@evenhead{\thepage\hfil\slshape\leftmark} % running head
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage} % running head
    \let\@mkboth\markboth % When using this page style, the contents of the running head is determined by the chapter and section titles

    % \chaptermark{} is called by \chapter to set a mark
  % use the \chaptermark and \sectionmark macros to fill the running heads
  \def\chaptermark##1{% ##1 will be defined on execution
    % define left chapter mark, but leave right chapter mark empty
    \markboth {\MakeUppercase{
      \ifnum \c@secnumdepth >\m@ne
         \if@mainmatter
          \@chapapp\ \thechapter. \ %
        \fi
      \fi
      ##1}}{}}%
  % \sectionmark{} is called by \section to set a mark
  \def\sectionmark##1{%
    % define only right mark
    \markright {\MakeUppercase{%
      \ifnum \c@secnumdepth >\z@
        \thesection. \ %
      \fi
      ##1}
    }
  }
} % end of headings configuration for two-sided printing

% define headings (again?), but now indonditionally to one- or two-sided printing
% [The definition of the page style myheadings is fairly simple because the user determines the contents of the running head himself by using the \markboth and \markright commands.]
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
}

\if@titlepage
  \newcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
  \begin{flushleft}%
    {\LARGE \sffamily \@title \par}%
    \vspace*{2cm}
    {\Large \sffamily \@subtitle \par}%
    \vskip 2cm%
    {\large \lineskip .75em \begin{tabular}[t]{c} {\Huge  \@author} \end{tabular}\par}
    \rule{\linewidth}{1mm} \par
    \vskip 1cm%
    {\large TESI DOCTORAL UPF / year \@thyear}\\[2cm]
    {\normalsize THESIS SUPERVISOR}\par
    {\large \@supervisor}\par
    {\large Department \@department} \par
    \vspace{2cm}
   \centering
    \includegraphics[scale=0.4]{logo_upf.png}
   \end{flushleft}\par
  \end{titlepage}%

  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\s@ubtitle\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}

% this macro takes care of formatting the title information when we have no separate title page
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}% \s@ubtitle
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi


\newcommand*\chaptermark[1]{} % default initializations of \...mark commands

\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]

% for any counter CTR, \theCTR is a macro that defines the printed version of counter CTR
\renewcommand \thepart {\@Roman\c@part} % parts in Roman numerals
\renewcommand \thechapter {\@arabic\c@chapter} % chapters in Arabic numerals
\renewcommand \thesection {\thechapter.\@arabic\c@section} % sections in Arabic numerals
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection} % subsections in Arabic numerals
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection} % csubsubsections in Arabic numerals
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph} % paragraphs in Arabic numerals
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph} % subparagraphs in Arabic numerals

% chapter name
\newcommand\@chapapp{\chaptername} 

% to remove page numbers from blank pages
\let\origdoublepage\cleardoublepage
\renewcommand{\cleardoublepage}{%
  \clearpage
  {\pagestyle{empty}\origdoublepage}%
}


% starts Roman page numbering and turns off chapter numbering
\newcommand\frontmatter{%
  \@mainmatterfalse
  \pagenumbering{roman}
}

% clear the page, start arabic page numbering and turn on chapter numbering
\newcommand\mainmatter{%
  \@mainmattertrue
  \pagenumbering{arabic}
  }

% clear the page, turn off chapter numbering and leave page numbering unchanged
\newcommand\backmatter{
  \@mainmatterfalse
}

% \part is the command to start a new part of our document
% \@part does the actual formatting of the title of the part
\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname\nobreakspace\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge \bfseries #2\par}%
    \@endpart
}

% \@spart the actual formatting of the title of the part when the star form of the user command was used
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Huge \bfseries #1\par}%
    \@endpart
}

% \@endpart finishes the part page, for both \@part and \@spart
\def\@endpart{
  \vfil\newpage
  \if@twoside
    \if@openright
      \null
      \thispagestyle{empty}%
      \newpage
    \fi
  \fi
  \if@tempswa
    \twocolumn
  \fi
}

% a chapter should always start on a new page therefore we start by calling \clearpage and setting the pagestyle for this page to plain.
\newcommand\chapter{
  \if@openright\clearpage\else\clearpage\fi
  \thispagestyle{plain}%
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter
}

% \@chapter is called when we have a numbered chapter
\def\@chapter[#1]#2{
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
    \refstepcounter{chapter}%
    \typeout{\@chapapp\space\thechapter.}%
    \addcontentsline{toc}{chapter}%
    {\protect\numberline{\thechapter}{}}%
  \else
    \addcontentsline{toc}{chapter}{}%
  \fi
  \else
    \addcontentsline{toc}{chapter}{}%
  \fi
  \chaptermark{}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
  \@makechapterhead{#2}%
  \@afterheading
  \fi
}

% \@makechapterhead⟨text⟩ formats the heading of the chapter
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \Large \bfseries \sf \scshape{ #1}\par\nobreak % section titles
    \vskip 40\p@
  }
}

% \@schapter is for unnumbered chapters
\def\@schapter#1{
  \if@twocolumn
    \@topnewpage[\@makeschapterhead{#1}]%
  \else
    \@makeschapterhead{#1}%
    \@afterheading
  \fi
}

% format the heading of the chapter
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }
}

\newcommand\section{
  \@startsection {section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}%
  {2.3ex \@plus.2ex}%
  {\normalfont\Large\bfseries}
}

\newcommand\subsection{
  \@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\normalfont\large\bfseries}
}

\newcommand\subsubsection{
  \@startsection{subsubsection}{3}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\normalfont\normalsize\bfseries}
}

\newcommand\paragraph{
  \@startsection{paragraph}{4}{\z@}%
  {3.25ex \@plus1ex \@minus.2ex}%
  {-1em}%
  {\normalfont\normalsize\bfseries}
}

\newcommand\subparagraph{
  \@startsection{subparagraph}{5}{\parindent}%
  {3.25ex \@plus1ex \@minus .2ex}%
  {-1em}%
  {\normalfont\normalsize\bfseries}
}

% when we are in two-column mode some of the margins are set somewhat smaller
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi

% until the whole of the parameter setting in these files is rationalised,
% we need to set the value of \leftmargin at this outer level.
\leftmargin  \leftmargini

% the following three are calculated so that they are larger than the sum of
% \labelsep and the width of the default labels (which are ‘(m)’, ‘vii.’ and ‘M.’)
\setlength  \labelsep  {.5em}
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}

\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi

% \labelsep is the distance between the label and the text of an item; \labelwidth is the width of the label.
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}

% this penalty is inserted between list items
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty

% the counters are already defined in the LATEX format, but their representation is changed here.
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}

% the label for each item is generated by the commands \labelenumi . . . \labelenumiv.
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}

% the expansion of \p@enumN\theenumN defines the output of a \ref command
% when referencing an item of the Nth level of an enumerated list.
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}

% itemization
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}

% the description environment is defined here, while the itemize and enumerate environments are defined in the LATEX format
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}

% to change the formatting of the label
\newcommand*\descriptionlabel[1]{\hspace\labelsep \normalfont\bfseries #1}

% the verse environment is defined by making clever use of the list environment’s parameters
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}

\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}

\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}


\newenvironment{titlepage}
  {\cleardoublepage
   \if@twocolumn
     \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse\newpage
    \fi
    \thispagestyle{empty}%
    \setcounter{page}\@ne
    }%
    
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
}

% appendix
\newcommand\appendix{
  \par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}
}

% setting parameters for existing environments
% array and tabular
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}

% tabbing
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}

\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}

  % figures
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}

\newenvironment{figure}
               {\@float{figure}}
               {\end@float}

\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}

% table
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}

\newenvironment{table}
               {\@float{table}}
               {\end@float}

\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

% captions
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip
}

% font changing
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

% cross referencing
\newcommand\@pnumwidth{1.55em} % the width of a box in which the page number is put
\newcommand\@tocrmarg{2.55em} % the right margin for multiple line entries
\newcommand\@dotsep{4.5} % separation between dots, in mu units
\setcounter{tocdepth}{2}

\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
    
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}


% for chapters
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi
}

\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}

% list of figures
\newcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }

\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}

% list of tables
\newcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
}

\let\l@table\l@figure

% bibliography
% the "open" bibliography format uses an indentation of \bibindent.
\newdimen\bibindent
\setlength\bibindent{1.5em}

\newlength{\cslhangindent}
\setlength{\cslhangindent}{1.5em}
\newlength{\csllabelwidth}
\setlength{\csllabelwidth}{3em}
\newlength{\cslentryspacingunit} % times entry-spacing
\setlength{\cslentryspacingunit}{\parskip}
\newenvironment{CSLReferences}[2] % #1 hanging-ident, #2 entry spacing
  {\chapter*{\bibname}%
  \setlength{\parindent}{0pt} % don't indent paragraphs
   \ifodd #1 % turn on hanging indent if param 1 is 1
     \let\oldpar\par
     \def\par{\hangindent=\cslhangindent\oldpar}
   \fi
   \setlength{\parskip}{#2\cslentryspacingunit} % set entry spacing
   }%
 {}
\usepackage{calc}
\newcommand{\CSLBlock}[1]{#1\hfill\break}
\newcommand{\CSLLeftMargin}[1]{\parbox[t]{\csllabelwidth}{#1}}
\newcommand{\CSLRightInline}[1]{\parbox[t]{\linewidth - \csllabelwidth}{#1}\break}
\newcommand{\CSLIndent}[1]{\hspace{\cslhangindent}#1}

\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty

% index
\newenvironment{theindex}{
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \twocolumn[\@makeschapterhead{\indexname}]%
  \@mkboth{\MakeUppercase\indexname}%
  {\MakeUppercase\indexname}%
  \thispagestyle{plain}\parindent\z@
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 35\p@
  \let\item\@idxitem
}
{\if@restonecol\onecolumn\else\clearpage\fi}

\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}

% footnotes
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@
}

\@addtoreset{footnote}{chapter}

\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1
}

% initialization
\newcommand\contentsname{$toc-title$}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}

% date
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year
}

% two-column mode
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}

% other page-stlyes
\pagestyle{headings}
\pagenumbering{arabic}

% single or double sided printing
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\endinput

>
