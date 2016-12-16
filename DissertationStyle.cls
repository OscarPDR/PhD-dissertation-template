% !TEX encoding = UTF-8 Unicode

% ---------------------------------------------------------------------------
%   PhD thesis latex template
%
%   version 5 by Oscar Peña................. 2016
%   version 4 by Unai Aguilera.............. 2012
%   version 3 by Igor Ruiz-Agundez.......... 2011
%   version 2 by Jakob Suckale.............. 2007
%   version 1 by Harish Bhanderi............ 2002
% ---------------------------------------------------------------------------

% ----------------------------------------------------------------------------------------------------
%   Identification
% ----------------------------------------------------------------------------------------------------

\ProvidesClass{DissertationStyle}[2016/06/01 v5 PhD thesis class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\ifx\pdfoutput\undefined
   \LoadClass[a4paper]{book}
\else
   \LoadClass[pdftex, a4paper]{book}
\fi

% ----------------------------------------------------------------------------------------------------
%   Packages
% ----------------------------------------------------------------------------------------------------

%   packages for fancy things
% ----------------------------------------------------------------------------------------------------

\usepackage{amssymb}
\usepackage{graphics}
\usepackage[margin=10pt,font=small,labelfont=bf]{caption}
\usepackage{fancyhdr}
\usepackage{eucal}
\usepackage[usenames, dvipsnames]{color}
\usepackage[perpage]{footmisc}
\usepackage{enumitem}

\usepackage[authoryear, round]{natbib}
\renewcommand{\cite}{\citep}

\usepackage{ifthen}
\usepackage{multicol}
\setlength{\columnsep}{20pt}
\usepackage[nottoc]{tocbibind}

\usepackage{xifthen}

\usepackage{makeidx}

    \usepackage{rotating}
    \usepackage{rotfloat}

%   packages for use more than a language and fixing inputtenc
% ----------------------------------------------------------------------------------------------------

\usepackage[T1]{fontenc}
\usepackage[utf8x]{}
\usepackage{lmodern}

\usepackage{ucs}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}

\usepackage[spanish,british,activeacute]{babel}

\usepackage[intoc]{nomencl} % load nomencl extension; include in TOC
%if you use a macTeX 2008 or later, use the ifpdf package
\usepackage{ifpdf}

%:-------------------------- extra packages -----------------------

% Extra added
%\usepackage[authoryear]{natbib}
\usepackage{times}
\usepackage{quotchap}
\usepackage{titlesec}
\usepackage{fancybox}

\usepackage{listing}
\usepackage{rotating}

%\usepackage[options]{natbib}

% landscape package. Used to rotate tables, for instance
\usepackage{lscape}
\usepackage{pdflscape}

\usepackage{array}
\usepackage{booktabs}
\usepackage{longtable}
\usepackage{tabularx}
\usepackage{multirow}

\usepackage{lettrine}

% Introduce slash \
%\usepackage{slashbox}

% date and time
\usepackage{datetime}

% avoid hyphenation locally
\usepackage{hyphenat}

\usepackage{fourier}
\usepackage{fontspec}

\usepackage{tabularx} % also loads 'array' package

\usepackage{titling}

\usepackage{setspace}

\usepackage{minted}
\usemintedstyle{colorful}

\renewcommand\listingscaption{Code}

\usepackage[many]{tcolorbox}

\definecolor{bgblue}{RGB}{245,243,253}
\definecolor{ttblue}{RGB}{91,194,224}

\newtcolorbox{deustobracketbox}[1][]{
    breakable,
    freelance,
    title=#1,
    colback=white,
    colbacktitle=white,
    coltitle=deustoblue,
    fonttitle={\myfont \bfseries},
    bottomrule=0pt,
    boxrule=0pt,
    colframe=white,
    overlay unbroken and first={
        \draw[deustoblue!75!black,line width=3pt]
        ([xshift=5pt]frame.north west) --
        (frame.north west) --
        (frame.south west);
        \draw[deustoblue!75!black,line width=3pt]
        ([xshift=-5pt]frame.north east) --
        (frame.north east) --
        (frame.south east);
    },
    overlay unbroken app={
        \draw[deustoblue!75!black,line width=3pt,line cap=rect]
        (frame.south west) --
        ([xshift=5pt]frame.south west);
        \draw[deustoblue!75!black,line width=3pt,line cap=rect]
        (frame.south east) --
        ([xshift=-5pt]frame.south east);
    },
    overlay middle and last={
        \draw[deustoblue!75!black,line width=3pt]
        (frame.north west) --
        (frame.south west);
        \draw[deustoblue!75!black,line width=3pt]
        (frame.north east) --
        (frame.south east);
    },
    overlay last app={
        \draw[deustoblue!75!black,line width=3pt,line cap=rect]
        (frame.south west) --
        ([xshift=5pt]frame.south west);
        \draw[deustoblue!75!black,line width=3pt,line cap=rect]
        (frame.south east) --
        ([xshift=-5pt]frame.south east);
    },
}

\tcbuselibrary{theorems}

\newtcbtheorem[]{mydataset}{Dataset}
{colback=deustoblue!5,colframe=deustoblue!35!deustoblue,fonttitle=\bfseries}{th}

\newtcbtheorem[]{myendpoint}{SPARQL endpoint}
{colback=deustoblue!5,colframe=deustoblue!35!deustoblue,fonttitle=\bfseries}{th}

\newtcbtheorem[]{myanswer}{Answers from User \#}
{colback=stdgrey!5,colframe=stdgrey!35!stdgrey,fonttitle=\bfseries}{th}

\usepackage{lipsum}

\usepackage[autostyle]{csquotes}

\usepackage{pifont}

\newcommand{\cmark}{\ding{51}}
\newcommand{\xmark}{\ding{55}}

\newcommand{\Var}{\mathrm{Var}}

\newcommand{\specialcell}[2][c]{
    \begin{tabular}[#1]{@{}c@{}}#2\end{tabular}
}

%:-------------------------- Glossary -----------------------

\usepackage{nomencl}
\renewcommand{\nomname}{Acronyms}
\renewcommand{\nomlabel}[1]{\textbf{#1}}
\makenomenclature


% ----------------------------------------------------------------------------------------------------
%   PDF/PS setup
% ----------------------------------------------------------------------------------------------------

\ifpdf
    \usepackage[
        pdftex, plainpages = false, pdfpagelabels,
        pdfpagelayout = useoutlines,
        bookmarks,
        bookmarksopen = true,
        bookmarksnumbered = true,
        breaklinks = true,
        linktocpage,
        pagebackref,
        colorlinks = false,
        linkcolor = white,
        urlcolor  = white,
        citecolor = white,
        anchorcolor = green,
        hyperindex = true,
        hyperfigures,
    ]{hyperref}

    \DeclareGraphicsExtensions{.png, .jpg, .jpeg, .pdf}
    \usepackage[pdftex]{graphicx}
    \pdfcompresslevel=9
\else
    \usepackage[
        bookmarks,
        bookmarksopen = true,
        bookmarksnumbered = true,
        breaklinks = true,
        linktocpage,
        pagebackref,
        colorlinks = false,
        linkcolor = blue,
        urlcolor  = blue,
        citecolor = white,
        anchorcolor = white,
        hyperindex = true,
        hyperfigures
    ]{hyperref}

    \DeclareGraphicsExtensions{.eps, .ps}
    \usepackage{epsfig}
    \usepackage{graphicx}
\fi





% ----------------------------------------------------------------------------------------------------
% ----------------------------------------------------------------------------------------------------
% ----------------------------------------------------------------------------------------------------
% ----------------------------------------------------------------------------------------------------
% ---------------------------------------------------------------------------------------------------




% An environment for paragraph-style section.
\providecommand\newthought[1]{
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}
   \noindent\textsc{#1}
}

% ----------------------------------------------------------------------------------------------------
% ----------------------------------------------------------------------------------------------------
% ----------------------------------------------------------------------------------------------------
% ----------------------------------------------------------------------------------------------------
% ----------------------------------------------------------------------------------------------------




% Line break directly after paragraph title
% http://www.latex-community.org/forum/viewtopic.php?f=5&t=1383
%\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
%  {-3.25ex\@plus -1ex \@minus -.2ex}%
%  {1.5ex \@plus .2ex}%
%  {\normalfont\normalsize\bfseries}}

%---------------------------------------------------------------
% Layout
%---------------------------------------------------------------


%:-------------------------- page layout -----------------------

\makeatletter

%   A4 settings
\ifpdf
   \pdfpageheight=297mm
   \pdfpagewidth=210mm
\else
   \setlength{\paperheight}{297mm}
   \setlength{\paperwidth}{210mm}
\fi

\setlength{\hoffset}{0.00cm}
\setlength{\voffset}{-1cm}

\setlength{\oddsidemargin}{1.5cm}
\setlength{\evensidemargin}{0.5cm}
\setlength{\topmargin}{0cm}

%\setlength{\headheight}{0.00cm}
\setlength{\headsep}{2.5cm}

\setlength{\textheight}{20.84cm}
\setlength{\textwidth}{13.9cm}
\setlength{\marginparsep}{0mm}
\setlength{\marginparwidth}{3cm}
\setlength{\footskip}{3.3cm}

\makeatother




%: section below defines fancy page layout options
% ------------------------------
\pagestyle{fancy}
%\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{\thechapter. #1 }}{}}
\renewcommand{\chaptermark}[1]{\markboth{{\textnormal{\textit{\small{\thechapter. #1 }}}}}{}}
\renewcommand{\sectionmark}[1]{\markright{\textnormal{\textit{\small{\thesection\ #1}}}}}
\fancyhf{}
\fancyhead[RO]{\color{stdgrey}\textnormal{\nouppercase{\textit{\small{\rightmark}}}}}
\fancyhead[LE]{\color{stdgrey}\textnormal{\nouppercase{\textit{\small{\leftmark}}}}}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
\addtolength{\headheight}{0pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}

% ----------------------------------------------------------------------------------------------------
%   Definitions
% ----------------------------------------------------------------------------------------------------

%   Metadata
% ----------------------------------------------------------------------------------------------------

\makeatletter

\def\author{Jane Doe}

\def\advisor{Dr. Joe Bloggs}
\def\coadvisor{Dr. Sally Citizen}

\def\phdprogram{Rather lenghty name of your PhD program}
\def\phdday{ Day}
\def\phdmonth{Month}
\def\phdyear{Year}

\makeatother

%   Colours
% ----------------------------------------------------------------------------------------------------

\definecolor{deustoblue}{cmyk}{1.00, 0.60, 0.00, 0.00}
\definecolor{stdgrey}{rgb}{0.5, 0.5, 0.5}

%   Fonts
% ----------------------------------------------------------------------------------------------------

% Fake small caps
%\renewcommand{\textsc}[1]{{\footnotesize \uppercase{#1}}}

% Define new fonts for specific strings
\newfontfamily\myfont[]{Ubuntu Light}

\usepackage{footmisc}
\def\footnotelayout{\color{stdgrey}}
\renewcommand{\thefootnote}{\color{stdgrey}{\arabic{footnote}}}

%
%%:-------------------------- title page layout -----------------------

% starts roman page numbering until chapter 1
% important to avoid two pages numbered 1 and 2 which may cause bad links
% bug: cover i + back side ii and then numbering restarts with i; should be iii
\renewcommand{\thepage}{\roman{page}}

% These macros define an environment for front matter that is always
% single column even in a double-column document.

\makeatletter

\newenvironment{alwayssingle}{
    \@restonecolfalse

    \if@twocolumn
        \@restonecoltrue\onecolumn
    \else
        \newpage
    \fi
}
{
    \if@restonecol
        \twocolumn
    \else
        \newpage
    \fi
}

\makeatother

\addto\captionsbritish{% Replace "english" with the language you use
  \renewcommand{\contentsname}%
    {Table of Contents}%
}

\newcommand{\fig}[1]{\mbox{figure~\ref{#1}}}
\newcommand{\Fig}[1]{\mbox{Figure~\ref{#1}}}

\newcommand{\cod}[1]{\mbox{code~\ref{#1}}}
\newcommand{\Cod}[1]{\mbox{Code~\ref{#1}}}

%%
%% Permite referenciar secciones directamente de la forma Sección \ref{label}

\newcommand{\sect}[1]{\mbox{section~\ref{#1}}}
\newcommand{\Sect}[1]{\mbox{Section~\ref{#1}}}

%%
%% Permite referenciar secciones directamente de la forma Capítulo \ref{label}

\newcommand{\chap}[1]{\mbox{chapter~\ref{#1}}}
\newcommand{\Chap}[1]{\mbox{Chapter~\ref{#1}}}

%%
%% Permite referenciar secciones directamente de la forma Capítulo \ref{label}

\newcommand{\tabl}[1]{\mbox{table~\ref{#1}}}
\newcommand{\Tabl}[1]{\mbox{Table~\ref{#1}}}

%:--------------------- TODO command --------------------------------
\newcommand{\todo}[1]{\textcolor{red}{@TODO: #1}}

% ----------------------------------------------------------------------------------------------------
%   Front matter layout
% ----------------------------------------------------------------------------------------------------

%   Page with all the metadata information of the dissertation
% ----------------------------------------------------------------------------------------------------

\renewcommand{\maketitle}{
    \pagestyle{empty}

    \begin{alwayssingle}
        \begin{figure}
            \centering
            \includegraphics[width=0.5\textwidth]{0_frontmatter/img/university_shield.png}
            \begin{center}
                \textsc{Monsters University}\\
            \end{center}
        \end{figure}

        \begin{center}
            \Huge \thetitle \normalsize\\

            \vspace{75pt}

            PhD dissertation by \textsc{\author}\\

            \vspace{25pt}

            within the doctoral program \textsc{\phdprogram}\\

            \vspace{75pt}

            \begin{tabularx}{\textwidth}{CCC}
                Candidate & Advisor & Co-advisor\\
            \end{tabularx}\\

            \vspace{55pt}
        \end{center}
    \end{alwayssingle}

    \cleardoublepage
}

%   The dedication environment makes sure that it gets its own page in verse format
% ----------------------------------------------------------------------------------------------------

\newenvironment{dedication}{
    \pagestyle{empty}

    \begin{alwayssingle}
        \begin{center}
            \vspace*{1.5cm}
            {\LARGE }
        \end{center}
        \vspace{0.5cm}
        \begin{quote}
            \begin{flushright}
                Lorem ipsum Nostrud Excepteur dolore voluptate \\
                do in dolore minim Duis proident \\
                fugiat eiusmod exercitation eiusmod \\
                id nisi proident amet consequat.
            \end{flushright}
        \end{quote}
    \end{alwayssingle}

    \cleardoublepage
}

%   The abstract gets its own page with a big centered title
% ----------------------------------------------------------------------------------------------------

\newenvironment{abstract} {
    \pagestyle{empty}

    \begin{alwayssingle}
        \begin{center}
            \vspace*{1.5cm}
            {\Large \bfseries \color{deustoblue} Abstract} \\
            \color{deustoblue}\hrulefill
        \end{center}

        \vspace{0.5cm}
        \begin{quote}
    }
    {
        \end{quote}
    \end{alwayssingle}

    \cleardoublepage
}

%   The abstract (es-ES) gets its own page with a big centered title
% ----------------------------------------------------------------------------------------------------

\newenvironment{resumen} {
    \pagestyle{empty}

    \begin{alwayssingle}
        \begin{center}
            \vspace*{1.5cm}
            {\Large \bfseries \color{deustoblue} Resumen} \\
            \color{deustoblue}\hrulefill
        \end{center}

        \vspace{0.5cm}
        \begin{quote}
    }
    {
        \end{quote}
    \end{alwayssingle}

    \cleardoublepage
}

%   The acknowledgements also get their own page with a big centered title
% ----------------------------------------------------------------------------------------------------

\newenvironment{acknowledgements} {
    \pagestyle{empty}

    \begin{alwayssingle}
        \begin{center}
            \vspace*{1.5cm}
            {\Large \bfseries \color{deustoblue} Acknowledgements} \\
            \color{deustoblue}\hrulefill
        \end{center}

        \vspace{0.5cm}
        \begin{quote}
    }
    {
        \end{quote}
    \end{alwayssingle}

    \cleardoublepage
}

% ----------------------------------------------------------------------------------------------------
%   Back matter layout
% ----------------------------------------------------------------------------------------------------

\renewcommand{\backmatter}{
    \cleardoublepage

    \pagestyle{fancy}

    %   chapter -------------------------

    \titleformat{\chapter}
        [display]
        {\filleft}
        {
            \color{deustoblue}{\filleft\small{\bfseries APPENDIX}}
            {\linebreak\fontsize{90}{90}\selectfont\selectfont {\bfseries \thechapter}}
        }
        {2ex}
        {\vspace{2ex}\bfseries \fontsize{30}{30}\selectfont}

    \titlespacing{\chapter}
        {3mm}{*10}{15mm}[3mm]


    %   section -------------------------

    \titleformat{\section}
        [block]
        {\normalfont\Large}
        {\thesection}
        {.5em}
        {\bfseries}

    \titlespacing*{\section}
        {0pt}{*4}{*1}


    %   subsection -------------------------

    \titleformat{\subsection}
        [block]
        {\normalfont\large}
        {\thesubsection}
        {.5em}
        {\bfseries}

    \titlespacing*{\subsection}
        {0pt}{*4}{*1}

    %   subsubsection -------------------------

    \titleformat{\subsubsection}
        [block]
        {\normalfont\normalsize}
        {\thesubsubsection}
        {.5em}
        {\bfseries}

    \titlespacing*{\subsubsection}
        {0pt}{*4}{0.5ex}
}

%   Declaration statement of the originality of the performed work
% ----------------------------------------------------------------------------------------------------

\newenvironment{declaration} {
    \pagestyle{empty}

    \begin{alwayssingle}
        \begin{center}
            \vspace*{1.5cm}
            {\Large \bfseries \color{deustoblue} Declaration} \\
            \color{deustoblue}\hrulefill
        \end{center}

        \vspace{0.5cm}
        \begin{quote}
    }
    {
        \end{quote}
    \end{alwayssingle}

    \cleardoublepage
}

%   Brief line stating when the dissertation was finished
% ----------------------------------------------------------------------------------------------------

\newenvironment{finishdate} {
    \begin{alwayssingle}
        \pagestyle{empty}

        \begin{center}
            \vspace*{1.5cm}
        \end{center}

        \vspace{0.5cm}
        \begin{quote}
    }
    {
        \end{quote}
    \end{alwayssingle}
}

% ----------------------------------------------------------------------------------------------------
%   Main matter layout
% ----------------------------------------------------------------------------------------------------

\renewcommand{\mainmatter}{
    \cleardoublepage

    \pagestyle{fancy}
    \pagenumbering{arabic}

    %   chapter -------------------------

    \titleformat{\chapter}
        [display]
        {\filleft}
        {
            \color{deustoblue}{\filleft\small{\bfseries CHAPTER}}
            {\linebreak\fontsize{90}{90}\selectfont\selectfont {\bfseries \thechapter}}
        }
        {2ex}
        {\vspace{2ex}\bfseries \fontsize{30}{30}\selectfont}

    \titlespacing{\chapter}
        {3mm}{*10}{15mm}[3mm]


    %   section -------------------------

    \titleformat{\section}
        [block]
        {\normalfont\Large}
        {\thesection}
        {.5em}
        {\bfseries}

    \titlespacing*{\section}
        {0pt}{*4}{*1}


    %   subsection -------------------------

    \titleformat{\subsection}
        [block]
        {\normalfont\large}
        {\thesubsection}
        {.5em}
        {\bfseries}

    \titlespacing*{\subsection}
        {0pt}{*4}{*1}

    %   subsubsection -------------------------

    \titleformat{\subsubsection}
        [block]
        {\normalfont\normalsize}
        {\thesubsubsection}
        {.5em}
        {\bfseries}

    \titlespacing*{\subsubsection}
        {0pt}{*4}{0.5ex}
}

% ----------------------------------------------------------------------------------------------------
%   Page numbers
% ----------------------------------------------------------------------------------------------------

%   The romanpages environment set the page numbering to lowercase roman 'one' for the contents and
%   figures lists. It also resets the numbering for the rest of the dissertation in arabic (starting at 1)
% ----------------------------------------------------------------------------------------------------

\newenvironment{romanpages}
{
    \setcounter{page}{1}
    \renewcommand{\thepage}{\roman{page}}
}

{
    \newpage
    \renewcommand{\thepage}{\arabic{page}}
    \setcounter{page}{1}
}

\newcolumntype{C}{>{\centering\arraybackslash}X}
