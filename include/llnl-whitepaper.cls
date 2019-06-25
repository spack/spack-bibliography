%!TEX root = ecp-spack-whitepaper.tex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{llnl-whitepaper}[2015/09/07 LLNL Whitepaper Document Class]

% --------------------------------------------------
% Options are passed to the 'artlcle' class, upon
% which this is based.
% --------------------------------------------------
\newcommand{\acm@columnmode}{}
\newcommand{\acm@pointsize}{}

% onecolumn option
\DeclareOption{onecolumn}{%
    \renewcommand{\acm@columnmode}{onecolumn}}

% twocolumn option.
\DeclareOption{twocolumn}{%
    \renewcommand{\acm@columnmode}{twocolumn}}

% point size options
\DeclareOption{9pt}{%
    \renewcommand{\acm@pointsize}{9pt}}
\DeclareOption{10pt}{%
    \renewcommand{\acm@pointsize}{10pt}}
\DeclareOption{11pt}{%
    \renewcommand{\acm@pointsize}{11pt}}
\DeclareOption{12pt}{%
    \renewcommand{\acm@pointsize}{12pt}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\PassOptionsToClass{\acm@columnmode}{article}
\ifdim\acm@pointsize>9pt
    \PassOptionsToClass{\acm@pointsize}{article}
\fi

% --------------------------------------------------
% Load plain old LaTeX article class.
% --------------------------------------------------
\LoadClass{article}

% --------------------------------------------------
% Page geometry & fonts
% --------------------------------------------------
\usepackage{fullpage}
\usepackage{times}
\usepackage{inconsolata}

% --------------------------------------------------
% Colors
% --------------------------------------------------
\usepackage[table]{xcolor}
\usepackage{tikz}

\definecolor{secblue}{HTML}{3B5E7F}
\definecolor{subsecblue}{HTML}{4F81BD}
\definecolor{hdrgray}{HTML}{A7B7C7}

\definecolor{boxblue}{HTML}{587590}
\definecolor{boxgray}{HTML}{E0E6E6}

% Space reduction
\usepackage{caption}
\DeclareCaptionFont{subsecblue}{\color{subsecblue}}
\captionsetup{labelfont={small,subsecblue,bf},font=small}

\usepackage{enumitem}
\setlist{noitemsep,topsep=2pt}


% --------------------------------------------------
% Section heading formats
% --------------------------------------------------
\usepackage{titling}
\setlength{\droptitle}{-6em}

\usepackage{titlesec}

%
% Section spacing
%
\titlespacing{\paragraph}{0em}{.2em}{.5em}
\titlespacing{\section}{0em}{.7em}{.2em}
\titlespacing{\subsection}{0em}{.5em}{.2em}
\titlespacing{\subsubsection}{0em}{.5em}{.2em}

\def\secformat{\sffamily\bfseries}

%
% TODO: why doesn't this actually change the title?
%
\titleformat{\title}{%
	\Large\secformat\color{secblue}%
}{\thetitle}{0em}{}

%
% Section formats
%
\titleformat{\section}{%
	\large\secformat\color{secblue}%
}{\thesection}{1em}{}
\titleformat{\subsection}{%
	\large\secformat\color{subsecblue}%
}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{%
	\normalsize\secformat\color{subsecblue}%
}{\thesubsubsection}{1em}{}
\titleformat{\paragraph}[runin]{%
	\normalsize\secformat\color{subsecblue}%
}{\theparagraph}{1em}{}

\newcommand{\tablesec}[1]{%
	\vspace{.1em}
	\textbf{\color{subsecblue} #1}\newline}

% --------------------------------------------------
% Lists
% --------------------------------------------------
\usepackage{enumitem}
\setlist{noitemsep,topsep=2pt}

% --------------------------------------------------
% Paragraphs
% --------------------------------------------------
\setlength{\parindent}{0em}
\setlength{\parskip}{.4em}

\setlength\abovecaptionskip{0em}
\setlength\belowcaptionskip{0em}
