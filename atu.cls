%%----------------------------------------------------------
%% atu.cls
%% v1.0
%% 2022/11/25
%% by Samad nowruzian based on XIE Yuhao templates
%%----------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atu}

%%---------------------------------------------------------- 
%% theme colors
%%----------------------------------------------------------
\RequirePackage{xcolor}
\definecolor{atugreen}{HTML}{00a693}
\definecolor{atublue}{HTML}{1c39bb}
\definecolor{atugray}{HTML}{666666}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[twocolumn]{article}

%%----------------------------------------------------------
%% useful packages
%%----------------------------------------------------------
\usepackage{pgfplots}
\usepackage{bidi}
\RequirePackage{authblk}
\RequirePackage[utf8]{inputenc}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{esint}
\usepackage{xepersian}
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage[title]{appendix}
\linespread{1.5}
\settextfont{IRXLotus}
\setdigitfont{Yas}

%----------------------------------------------------------
% 							margins		  				%
%----------------------------------------------------------

\RequirePackage[a4paper, left=2cm, right=2cm, top=4.0cm, bottom=3cm, headheight=2.5cm,]{geometry}%

%----------------------------------------------------------
% 						main color  					   %
%----------------------------------------------------------

\renewcommand{\normalcolor}{\color{black}}

%----------------------------------------------------------
% 				  Title and Heading					%
%----------------------------------------------------------


\renewcommand{\maketitle}{% title format
	    \twocolumn[%
	    \fontsize{28}{20}\fontseries{b}% title font
        \fontshape{n}\selectfont\normalcolor\
        \@title
        
        \vspace{8pt}
        
        \fontsize{12}{10}\fontseries{m}% author font
        \fontshape{n}\selectfont\normalcolor
        \@author
        \vspace{30pt}
        ]%
}

\renewcommand{\section}{% section headings format
    \@startsection
    {section}% name
    {1}% level
    {0pt}% indent
    {-1.5ex plus -1ex minus -.2ex}% beforeskip
    {1ex plus .2ex}% afterskip
    {\fontsize{14}{12}\fontshape{sc}\fontseries{b}\selectfont\color{atugreen}}% style
}

\renewcommand{\subsection}{% section headings format
    \@startsection
    {subsection}% name
    {2}% level
    {0pt}% indent
    {-1.5ex plus -1ex minus -.2ex}% beforeskip
    {1ex plus .2ex}% afterskip
    {\fontsize{10}{10}\fontseries{b}\fontshape{n}\selectfont\normalcolor}% style
}

\renewcommand{\subsubsection}{% section headings format
    \@startsection
    {subsubsection}% name
    {3}% level
    {.42cm}% indent
    {-1.5ex plus -1ex minus -.2ex}% beforeskip
    {1ex plus .2ex}% afterskip
    {\fontsize{9}{10}\fontshape{sl}\selectfont\normalcolor}% style
}

%%----------------------------------------------------------
%% main text
%%----------------------------------------------------------
\renewcommand{\normalsize}{\fontsize{11}{15}\selectfont}

%% drop caps
%\RequirePackage{lettrine}
%\renewcommand{\LettrineFontHook}{\fontshape{n}\fontseries{b}\selectfont\normalcolor}
\setlength{\columnsep}{0.5cm}

%%----------------------------------------------------------
%% numbering
%%----------------------------------------------------------
\setcounter{secnumdepth}{1} % set it to 0 to disable section numbering
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\Alph{subsection}}
\renewcommand{\thesubsubsection}{\Alph{subsubsection}}

%%----------------------------------------------------------
%% headers and footers
%%----------------------------------------------------------

\RequirePackage{fancyhdr}  % Needed to define custom headers/footers
\RequirePackage{lastpage}  % Number of pages in the document
\pagestyle{fancy}          % Enables the custom headers/footers
% Headers
\lhead{\color{atugreen}\bfseries \Huge \lr{POLICY BRIEF}}%
\chead{}%
\rhead{\includegraphics[width=3.5cm]{logo}}%

% Footers
\lfoot{\pageref{LastPage}/\thepage}%
\cfoot{}%
\rfoot{\@title }%

\renewcommand{\headrulewidth}{0.5pt}% % header rule
\renewcommand{\footrulewidth}{0.5pt}% % footer rule

%%----------------------------------------------------------
%% figure and table captions
%%----------------------------------------------------------
\RequirePackage[font={sf,footnotesize,color=atugrey},%
                labelsep=period,%
                justification=raggedright]{caption}
\setlength{\abovecaptionskip}{8pt}
\setlength{\belowcaptionskip}{8pt}

%%----------------------------------------------------------
%% footnotes
%%----------------------------------------------------------
\let\footnotesize=\small
\usepackage[singlespacing]{setspace}
\def\FN@baselinestretch{1.7}

\usepackage[hang, flushmargin,splitrule,multiple]{footmisc}
\setlength{\footnotemargin}{0.8em} % Between marker and text
\setlength{\skip\footins}{1\baselineskip} % Between main text and note rule
\setlength{\footnotesep}{0.75\skip\footins} % Between footnotes [= previous]

\usepackage{etoolbox}
\makeatletter%%
\patchcmd{\@makefntext}{%
\ifFN@hangfoot
\bgroup}%
{%
\ifFN@hangfoot
\bgroup\def\@makefnmark{\rlap{\normalfont\@thefnmark.}}}{}{}%
% %%%
\patchcmd{\@makefntext}{%
\ifdim\footnotemargin>\z@
\hb@xt@ \footnotemargin{\hss\@makefnmark}}%
{%
\ifdim\footnotemargin>\z@
\hb@xt@ \footnotemargin{\@makefnmark\hss}}{}{}%
\makeatother

