%%----------------------------------------------------------
%% atu.cls
%% v1.0
%% 2022/11/25
%% by Samad nowruzian based on XIE Yuhao templates
%%----------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atu}

\RequirePackage{fancyhdr}  % Needed to define custom headers/footers
\RequirePackage{lastpage}  % Number of pages in the document
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
\RequirePackage[a4paper, left=1.4cm, right=1.4cm, top=3.7cm, bottom=2.8cm, headheight=2.5cm,]{geometry}%
%%----------------------------------------------------------
%% useful packages
%%----------------------------------------------------------
\usepackage{tikz,pgfplots,pgfplotstable}
\usepackage[flushmargin,splitrule,multiple]{footmisc}
\usepackage{etoolbox}
\usetikzlibrary{patterns}
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage[title]{appendix}
\usepackage[linktocpage=true,colorlinks,citecolor=red,pagebackref=false]{hyperref}%
\usepackage{caption}
\DeclareCaptionType[fileext=los,placement={!ht}]{diagram}
\usepackage{xepersian}
\settextfont{IRXLotus}
\setdigitfont[Scale = 0.85]{Yas}
\setlatintextfont[Scale = 0.85]{CMU Serif}

%----------------------------------------------------------
% 							margins		  				%
%----------------------------------------------------------



%----------------------------------------------------------
% 						main color  					   %
%----------------------------------------------------------

\renewcommand{\normalcolor}{\color{black}}

%----------------------------------------------------------
% 				  Title and Heading					%
%----------------------------------------------------------


\renewcommand{\maketitle}{% title format
	    \twocolumn[%
	    \fontsize{25}{22}\fontseries{b}% title font
        \fontshape{n}\selectfont\normalcolor
        \@title
        
        \vspace{13pt}
        
        \fontsize{14}{10}\fontseries{m}% author font
        \fontshape{n}\selectfont\normalcolor
        \@author
        \vspace{13pt}
        ]%
}

\renewcommand{\section}{% section headings format
    \@startsection
    {section}% name
    {1}% level
    {0pt}% indent
    {-1.0ex plus -1ex minus -.2ex}% beforeskip
    {0.5ex plus .2ex}% afterskip
    {\fontsize{16}{12}\fontshape{sc}\fontseries{b}\selectfont\color{atugreen}}% style
}

\renewcommand{\subsection}{% section headings format
    \@startsection
    {subsection}% name
    {1}% level
    {0pt}% indent
    {-1.0ex plus -1ex minus -.2ex}% beforeskip
    {0.5ex plus .2ex}% afterskip
    {\fontsize{13}{10}\fontseries{b}\fontshape{n}\selectfont\color{atublue}}% style
}

\renewcommand{\subsubsection}{% section headings format
    \@startsection
    {subsubsection}% name
    {3}% level
    {.42cm}% indent
    {-1.5ex plus -1ex minus -.2ex}% beforeskip
    {1ex plus .2ex}% afterskip
    {\fontsize{12}{10}\fontshape{sl}\selectfont\normalcolor}% style
}

%%----------------------------------------------------------
%% main text
%%----------------------------------------------------------
\renewcommand{\normalsize}{\fontsize{12}{15}\selectfont}

%% drop caps
%\RequirePackage{lettrine}
%\renewcommand{\LettrineFontHook}{\fontshape{n}\fontseries{b}\selectfont\normalcolor}
\setlength{\columnsep}{0.5cm}

%%----------------------------------------------------------
%% numbering
%%----------------------------------------------------------
\setcounter{secnumdepth}{0} % set it to 0 to disable section numbering
\renewcommand{\thesection}{\alph{section}}
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\Alph{subsubsection}}

%%----------------------------------------------------------
%% headers and footers
%%----------------------------------------------------------


\pagestyle{fancy}          % Enables the custom headers/footers
% Headers
\lhead{\color{atugreen}\bfseries \Huge \lr{POLICY BRIEF}}%
\chead{}%
\rhead{\includegraphics[width=3.5cm]{logo}}%

% Footers \lfoot{\pageref{LastPage}/\thepage}%
\lfoot{\thepage}%
\cfoot{}%
\rfoot{\@title }%

\renewcommand{\headrulewidth}{0.5pt}% % header rule
\renewcommand{\footrulewidth}{0.5pt}% % footer rule


%%----------------------------------------------------------
%% footnotes
%%----------------------------------------------------------
\let\footnotesize=\small
\usepackage[singlespacing]{setspace}
\def\FN@baselinestretch{1.7}

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

\setlength{\footnotemargin}{0.8em} % Between marker and text
\setlength{\skip\footins}{1\baselineskip} % Between main text and note rule
\setlength{\footnotesep}{0.5\skip\footins} % Between footnotes [= previous]



