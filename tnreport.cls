\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{tnreport}[2015/03/13 TELECOM Nancy Master Thesis, v0.2]

\LoadClass[a4paper,twoside,12pt]{report}

\RequirePackage{graphicx}
\RequirePackage[english]{babel}
\RequirePackage{amsfonts,amssymb,amsmath,mathtools}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
%\RequirePackage{times}
\RequirePackage{libertine}
%\RequirePackage{newtxtext}
\RequirePackage[libertine]{newtxmath}

\RequirePackage[svgnames,table]{xcolor}
\RequirePackage{listings}

\RequirePackage{import}

\RequirePackage[backend=biber,backref=true,style=numeric,sorting=nyt]{biblatex}
\RequirePackage{csquotes}

\RequirePackage{appendix}

\RequirePackage{epigraph}

\RequirePackage{booktabs}

\lstset{ %
  backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
  basicstyle=\footnotesize,        % the size of the fonts that are used for the code
  breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
  breaklines=true,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{Orange},    % comment style
  extendedchars=false,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
  frame=single,                    % adds a frame around the code
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{DarkOrchid},       % keyword style
  numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  numberstyle=\tiny\color{DarkGray}, % the style that is used for the line-numbers
  rulecolor=\color{DarkGray},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=false,                  % show tabs within strings adding particular underscores
  stepnumber=1,                    % the step between two line-numbers. If it's 1, each line will be numbered
  stringstyle=\color{DarkGreen},     % string literal style
  tabsize=2,                     % sets default tabsize to 2 spaces
  %title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

\RequirePackage[a4paper]{geometry}
\geometry{top=2cm, bottom=2cm,right=2cm,left=2.5cm}

\RequirePackage[colorlinks,linkcolor=black,citecolor=black]{hyperref}
\hypersetup{urlcolor=black}
\urlstyle{same}
\RequirePackage{acronym}

\newcommand{\email}[1]{\href{mailto:#1}{\nolinkurl{#1}}}
\newcommand{\universityYear}[1]{\the\numexpr #1 - 1 \relax--\the#1}

\RequirePackage{draftwatermark}
\@sc@wm@stampfalse
\SetWatermarkText{Confidentiel}
\SetWatermarkScale{.8}
\DeclareOption{confidential}{\@sc@wm@stamptrue}
\ProcessOptions

\RequirePackage{etoolbox}
\newbool{pidr}
\DeclareOption{pidr}{\booltrue{pidr}}
\newbool{pi}
\DeclareOption{pi}{\booltrue{pi}}
\ProcessOptions

\RequirePackage{authblk}

\RequirePackage{xcolor}
\definecolor{custom-light-yellow}{RGB}{254,237,187}
\definecolor{custom-dark-yellow}{RGB}{190,143,31}
\definecolor{custom-red}{RGB}{225,99,92}
\definecolor{custom-green}{RGB}{119,193,108}
\definecolor{custom-blue}{RGB}{209,227,242}

\RequirePackage{caption}

\RequirePackage{pifont}

\RequirePackage[xindy,toc,acronyms]{glossaries}
% next command sets the gls references format
%\renewcommand*{\glstextformat}[1]{\textsf{#1}}

\RequirePackage{tikz}
\usetikzlibrary{shapes,positioning,arrows,automata}

\RequirePackage{tikz-qtree}
\tikzset{edge from parent/.append style={->,>=latex}}

\RequirePackage{scrextend}

\RequirePackage{titlesec}
\titleformat{\chapter}
  {\normalfont\LARGE\bfseries}{\thechapter}{1em}{}

\usepackage[chapter,nottoc]{tocbibind}

\setlength{\parindent}{0pt}
\parskip 10pt

\setcounter{secnumdepth}{3}

\def\includeCompanyLogo{%
  \@ifundefined{reportCompanyLogoPath}{}{\includegraphics[height=6em]{\reportCompanyLogoPath}}
}

\def\includeShoolLogo{%
  \@ifundefined{reportSchoolLogoPath}{}{\includegraphics[height=5em]{\reportSchoolLogoPath}}
}

\addto\captionsenglish{
  \renewcommand{\contentsname}
    {Table of Contents}
}

\def\reportAuthor{Your name}

\def\reportAuthorAddress{Your address}
\def\reportAuthorCity{postal code, CITY} % Author city and postal code
\def\reportAuthorPhone{Your phone number} % Author phone number
\def\reportAuthorEmail{\email{Your mailing address}} % Author Email

\def\reportTitle{Internship title} % Internship title
\def\reportLongTitle{\reportTitle{}} % Long internship title
\def\reportYear{\universityYear{\year}} % University year

\def\reportCompany{Company title} % Company title
\def\reportCompanyAddress{Company address} % Company address
\def\reportCompanyCity{Postal code, CITY} % Company city and postal code
\def\reportCompanyPhone{Company phone number} % Company phone number
\def\reportCompanyLogoPath{figures/anonymous_company-logo} % Company Logo
\def\reportSchool{TELECOM Nancy} % School name
\def\reportSchoolAddress{193 avenue Paul Muller} % School address
\def\reportSchoolCity{CS 90172, VILLERS-L\`ES-NANCY} % School city and postal code
\def\reportSchoolPhone{+33 (0)3 83 68 26 00} % School phone number
\def\reportSchoolEmail{contact@telecomnancy.eu} % School contact email
\def\reportSchoolLogoPath{figures/school-logo}

\def\reportSchoolDiplomaYear{3} % School Diploma Year

\def\reportSupervisor{Supervisor's name} % Supervisor's name for PIDR only
\def\reportIndustrialSupervisor{Industrial supervisor's name} % Industrial supervisor's name
\def\reportAcademicSupervisor{Academic supervisor's name} % Academic supervisor's name

\def\place{City} % City of signature for the anti-plagiarism agreement
\def\date{\today} % Date of signature for the anti-plagiarism agreement

\def\reportProjectCustomer{Project realized for the XYZ team of DUMMY laboratory}

\def\reportIndustrialCustomer{Project realized in partnership with \reportCompany{}}

\ifbool{pidr}
  {\def\reportType{Cross-Disciplinary or Research Project}
   \def\reportSchoolDiplomaYear{2}}
  {\ifbool{pi}
    {\def\reportType{Industrial Project}
        \def\reportSchoolDiplomaYear{3}}
    {\def\reportType{Master Thesis}}}

\makeatletter
\def\maketitle{%
\pagestyle{empty}
\begin{center}
\includegraphics[width=4.5cm]{figures/school-logo}
\hspace{9mm}
\includegraphics[width=4.5cm]{figures/collegium-logo}
\hspace{9mm}
\includegraphics[width=4.5cm]{figures/university-logo}

\vfill

{\fontsize{40}{40}\selectfont \reportType{}}

\rule{\textwidth}{1pt}

\bigskip

{\fontsize{22}{22}\selectfont \reportTitle{}}

\medskip

{\fontsize{18}{18}\selectfont \bf \reportAuthor{}}

\medskip

{\fontsize{14}{14}\selectfont \bf Academic Year \reportYear{}}

\vfill

\includegraphics[height=10em]{\reportCompanyLogoPath}

\vfill

\ifbool{pidr}
    {\reportProjectCustomer{}}
    {\ifbool{pi}
        {\reportIndustrialCustomer{}}
    {\fontsize{13}{13}\selectfont \textit{Final year internship performed at the \reportCompany{}, a measurement standards laboratory and non-regulatory agency of the United States Department of Commerce, in preparation for the engineering degree of \reportSchool{}}}}

\vfill
\vfill

\end{center}


\ifbool{pidr}
{Encadrant : \reportSupervisor{}}
{\ifbool{pi}
    {Industrial supervisor: \reportSupervisor{}

        Academic supervisor: \reportAcademicSupervisor{}}
    {Internship supervisor: \reportIndustrialSupervisor{}

        Academic supervisor: \reportAcademicSupervisor{}}}

\cleardoublepage
\setcounter{page}{1}
\pagestyle{plain}
}
\makeatother


\makeatletter
\newcommand\insertAntiPlagiarismAgreement[2]{%

  \begin{center}
    \Large \bf Déclaration sur l'honneur de non-plagiat
  \end{center}

  \medskip
  \medskip

  {\bf Je soussigné(e),}

  {\bf Nom, prénom : #1}

  {\bf \'Elève-ingénieur(e) régulièrement inscrit(e) en \reportSchoolDiplomaYear{}\textsuperscript{e} année à \reportSchool{}}

  {\bf Numéro de carte de l'étudiant(e) :} #2

  {\bf Année universitaire :} \reportYear{}

  {\bf Auteur(e) du document, mémoire, rapport ou code informatique intitulé :}

  \begin{center}
    \Large \reportLongTitle{}
  \end{center}
  \medskip

  Par la présente, je déclare m'être informé(e) sur les différentes formes de
  plagiat existantes et sur les techniques et normes de citation et référence.

  Je déclare en outre que le travail rendu est un travail original, issu de ma
  réflexion personnelle, et qu'il a été rédigé entièrement par mes soins.
  J'affirme n'avoir ni contrefait, ni falsifié, ni copié tout ou partie de
  l'\oe{}uvre d'autrui, en particulier texte ou code informatique, dans le but
  de me l'accaparer.

  Je certifie donc que toutes formulations, idées, recherches, raisonnements,
  analyses, programmes, schémas ou autre créations, figurant dans le document
  et empruntés à un tiers, sont clairement signalés comme tels, selon les
  usages en vigueur.

  Je suis conscient(e) que le fait de ne pas citer une source ou de ne pas la
  citer clairement et complètement est constitutif de plagiat, que le plagiat
  est considéré comme une faute grave au sein de l'Université, et qu'en cas de
  manquement aux règles en la matière, j'encourrais des poursuites non
  seulement devant la commission de discipline de l'établissement mais
  également devant les tribunaux de la République Fran\c{c}aise.

  \medskip
  \medskip

  \hspace{5cm}{\bf Fait à \place{},     le  \date{}}

  \hspace{5cm}{\bf Signature :}
\cleardoublepage
}
\makeatother


\makeatletter
\def\makesecondtitle{
\pagestyle{empty}
\begin{center}

{\fontsize{40}{40}\selectfont \reportType{}}

\rule{\textwidth}{1pt}

\bigskip

{\fontsize{22}{22}\selectfont \reportTitle{}}

\medskip

{\fontsize{18}{18}\selectfont \bf \reportAuthor{}}

\medskip

{\fontsize{14}{14}\selectfont \bf Academic Year \reportYear{}}

\vspace{2.3cm}

\ifbool{pidr}
    {\reportProjectCustomer{}}
    {\ifbool{pi}
        {\reportIndustrialCustomer{}}
    {\fontsize{13}{13}\selectfont \textit{Final year internship performed at the \reportCompany{}, a measurement standards laboratory and non-regulatory agency of the United States Department of Commerce, in preparation for the engineering degree of \reportSchool{}}}}
    
\vspace{2.3cm}
\end{center}

\reportAuthor{} \\
\ifbool{pidr}
  {}
  {\ifbool{pi}
    {}
  {\reportAuthorAddress{} \\
    \reportAuthorCity{}\\
    \reportAuthorPhone{}\\
  }}
\reportAuthorEmail{}\\
\smallskip

\begin{minipage}[c]{0.65\textwidth}
    \reportSchool{}\\
    \reportSchoolAddress{},\\
    \reportSchoolCity{}\\
    \reportSchoolPhone{}\\
    \email{\reportSchoolEmail}
\end{minipage}
\begin{minipage}[c]{0.35\textwidth}
    \includegraphics[width=5cm]{figures/school-logo}
\end{minipage}

\smallskip

\begin{minipage}[c]{0.65\textwidth}
    \reportCompany{} \\
    \reportCompanyAddress{},\\
    \reportCompanyCity{}\\
    \reportCompanyPhone{}
\end{minipage}
\begin{minipage}[c]{0.35\textwidth}
    \includeCompanyLogo{}
\end{minipage}

\vfill

\ifbool{pidr}
{Encadrant : \reportSupervisor{}}
{\ifbool{pi}
    {Industrial supervisor: \reportSupervisor{}\\
    Academic supervisor: \reportAcademicSupervisor{}}
    {Internship supervisor: \reportIndustrialSupervisor{}\\
    Academic supervisor: \reportAcademicSupervisor{}}}

\cleardoublepage
\pagestyle{plain}
}
\makeatother


\newenvironment{dedication}
  {
   \thispagestyle{empty}% no header and footer
   \vspace*{\stretch{1}}% some space at the top
   \itshape             % the text is in italics
   \raggedleft          % flush to the right margin
  }
  {\par % end the paragraph
   \vspace{\stretch{3}} % space at bottom is three times that at the top
   \cleardoublepage     % finish off the page
  }