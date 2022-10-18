%%Identification
%%The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{skripsi-filkom}[]


%%Preliminary definitions, needed by the options
% \newcommand{\headlinecolor}{\normalcolor}
% \RequirePackage{xcolor}
% \definecolor{slcolor}{HTML}{882B21}

%%This parts handles the options passed to the class.
% \DeclareOption{onecolumn}{\OptionNotUsed}
% \DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
% \DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
% \ProcessOptions\relax
\LoadClass[12pt]{article}

\usepackage[english,indonesian]{babel}
\usepackage{multicol,blindtext,ragged2e}
\usepackage{titlesec}
\usepackage{indentfirst}
\usepackage{setspace}
\usepackage{enumitem}
\usepackage{csquotes}
\usepackage{longtable}
\usepackage[all]{nowidow}
\usepackage{graphicx}

\usepackage{chngcntr}
\counterwithin{table}{section}
\counterwithin{figure}{section}

\setlist[enumerate,itemize]{itemsep=1pt,parsep=0pt,before={\parskip=0pt}, topsep=7pt, partopsep=0pt}

\titleformat{\section}{\normalfont\Large\filcenter\bfseries}{BAB \thesection}{1em}{\uppercase}
\titlespacing*{\section}
{0pt}{5.5ex plus 1ex minus .2ex}{4.3ex plus .2ex}

\usepackage{caption} 
\DeclareCaptionLabelSeparator{mysep}{\quad}
\captionsetup[table]{skip=10pt,labelsep=mysep}
\captionsetup[figure]{skip=10pt,labelsep=mysep}

\usepackage{tocloft}
% \usepackage{tocbibind}
\usepackage{parskip}
\usepackage{natbib}
\usepackage{bibentry}
\nobibliography*
\renewcommand{\bibpreamble}{\vskip1cm}
\let\OLDthebibliography\thebibliography
\renewcommand\thebibliography[1]{
  \OLDthebibliography{#1}
  \setlength{\parskip}{0pt}
  \setlength{\itemsep}{0pt plus 0.3ex}
}


\usepackage[scaled]{beramono}
\renewcommand*\familydefault{\ttdefault} %% Only if the base font of the document is to be typewriter style
\usepackage[T1]{fontenc}
\usepackage{fancyvrb}
\usepackage{lipsum}
\usepackage{etoolbox}
\usepackage{xspace}
\usepackage{xstring}
\usepackage{ifthen}
\usepackage[toc,page]{appendix}
\usepackage[sfdefault]{carlito}
\usepackage[a4paper, 
    left=35mm,
    bottom=30mm,
    right=30mm, 
    top=40mm] {geometry}


\newcommand{\listappendixname}{
  \newpage
  \LARGE
  \uppercase{\hfill Daftar Lampiran \hfill}
  \addcontentsline{toc}{section}{Daftar Lampiran}
}
\newlistof{appendix}{app}{\listappendixname}
\setcounter{appdepth}{2}    
\renewcommand{\theappendix}{\Alph{appendix}}
\renewcommand{\cftappendixpresnum}{Lampiran\space}
\setlength{\cftbeforeappendixskip}{\baselineskip}
\setlength{\cftappendixnumwidth}{1in}
\newlistentry[appendix]{subappendix}{app}{1}
\renewcommand{\thesubappendix}{\theappendix.\arabic{subappendix}}
\renewcommand{\cftsubappendixpresnum}{Lampiran\space}
\setlength{\cftsubappendixnumwidth}{1in}
\setlength{\cftsubappendixindent}{0em}

\newcommand{\myappendix}[1]{%
  \refstepcounter{appendix}%
  \section*{\Large Lampiran \theappendix\space\space\space #1}%
  \addcontentsline{app}{appendix}{\protect\numberline{\theappendix}#1}%
  \par
}
\newcommand{\subappendix}[1]{%
  \refstepcounter{subappendix}%
  \subsection*{\Large Lampiran \thesubappendix\space\space\space #1}%
  \addcontentsline{app}{subappendix}{\protect\numberline{\thesubappendix}#1}%
}

% \let\subsubsubsubsection\subsubsubsection
% \let\subsubsubsection\subsubsection
% \let\subsubsection\subsection
\let\chapter\section
\let\section\subsection
\let\subsection\subsubsection
\let\subsubsection\subsubsubsection


\def\empty{}
\def\nama#1{\def\@nama{#1}}
\newcommand{\pnama}{\@nama}
\def\nim#1{\def\@nim{#1}}
\newcommand{\pnim}{\@nim}
\def\prodi#1{\def\@prodi{#1}}
\newcommand{\pprodi}{\@prodi}
\def\departemen#1{\def\@departemen{#1}}
\newcommand{\pdepartemen}{\@departemen}
\def\fakultas#1{\def\@fakultas{#1}}
\newcommand{\pfakultas}{\@fakultas}
\def\universitas#1{\def\@universitas{#1}}
\newcommand{\puniversitas}{\@universitas}
\def\tahun#1{\def\@tahun{#1}}
\newcommand{\ptahun}{\@tahun}

\def\tanggalujian#1{\def\@tanggalujian{#1}}
\newcommand{\ptanggalujian}{\@tanggalujian}

\def\pembimbingsatu#1{\def\@pembimbingsatu{#1}}
\newcommand{\ppembimbingsatu}{\@pembimbingsatu}
\def\pembimbingdua#1{\def\@pembimbingdua{#1}}
\newcommand{\ppembimbingdua}{\@pembimbingdua}
\def\nikpembimbingsatu#1{\def\@nikpembimbingsatu{#1}}
\newcommand{\pnikpembimbingsatu}{\@nikpembimbingsatu}
\def\nikpembimbingdua#1{\def\@nikpembimbingdua{#1}}
\newcommand{\pnikpembimbingdua}{\@nikpembimbingdua}
\def\kadep#1{\def\@kadep{#1}}
\newcommand{\pkadep}{\@kadep}
\def\nipkadep#1{\def\@nipkadep{#1}}
\newcommand{\pnipkadep}{\@nipkadep}

\def\titleen#1{\def\@titleen{#1}}
\newcommand{\ptitle}{\@title}
\newcommand{\ptitleen}{\@titleen}



\renewcommand\cfttoctitlefont{\hfill\LARGE\bfseries\MakeUppercase}
\renewcommand\cftaftertoctitle{\hfill\mbox{}}

\renewcommand{\cftloftitlefont}{\cleardoublepage\hspace*{\fill}\LARGE\bfseries\MakeUppercase}
\renewcommand{\cftafterloftitle}{
  \hspace*{\fill}\vspace{5mm}
  \addcontentsline{toc}{section}{Daftar Gambar}
}
\renewcommand{\cftfignumwidth}{6em}
\renewcommand{\cftfigpresnum}{Gambar }

\renewcommand{\cftlottitlefont}{\cleardoublepage\hspace*{\fill}\LARGE\bfseries\MakeUppercase}
\renewcommand{\cftafterlottitle}{
  \hspace*{\fill}\vspace{5mm}
  \addcontentsline{toc}{section}{Daftar Tabel}
}

\renewcommand{\cfttabnumwidth}{5em}
\renewcommand{\cfttabpresnum}{Tabel }

%%Body of the class, most of the declarations appear here.
\renewcommand{\maketitle}{%
  \pagenumbering{gobble}
  \noindent
  \LARGE
  
  \centering{
    \selectfont
    \bfseries
    \MakeUppercase{\@title} \\
    \vspace{10mm}
    \bfseries{SKRIPSI} \\
    \vspace{10mm}
  }
  \centering{
    \large
    Untuk memenuhi sebagian persyaratan \\
    memperoleh gelar Sarjana Komputer \\
    \vspace{10mm}
    Disusun oleh: \\
    \pnama \\
    NIM \pnim \\
    \vfill
    \includegraphics[width=.3\textwidth]{logo-ub.png}
    \vfill
  }
  \MakeUppercase{
    \centering{
      \Large
      Program Studi \pprodi \\
      Departemen \pdepartemen \\
      \pfakultas \\
      \puniversitas \\
      \ptahun
    }
  }
  % ]%
}

\newcommand{\withkadep}[1]{
  \ifthenelse{\equal{#1}{}}
  {} % if kadep is empty
  {
    \begin{tabular}{ c } 
    Mengetahui \\
    Ketua Departemen \pdepartemen \\ 
    \vspace{15mm} \\ 
    \pkadep \\
    \hline
    \pnipkadep \\ 
    \end{tabular}
  }
}

\newcommand{\pembimbingtunggal}[1] {
  \ifthenelse{\equal{#1}{}}
  {
    \begin{tabular}{ c } 
      Dosen Pembimbing \\ 
      \vspace{15mm}  \\ 
      \ppembimbingsatu \\
      \cline{1-1}
      \pnikpembimbingsatu \\ 
    \end{tabular} 
  } % if p2 is empty
  {
    \phantom{ }\vspace{10mm}
    \begin{tabular}{ ccc } 
      Dosen Pembimbing I & & Dosen Pembimbing II \\ 
      \vspace{15mm} & &  \\ 
      \ppembimbingsatu & & \ppembimbingdua \\
      \cline{1-1}
      \cline{3-3}
      \pnikpembimbingsatu & &      
      \pnikpembimbingdua \\ 
    \end{tabular}
  }
}

\newcommand{\lembarpengesahan}{
  \newpage
  \centering{
    \Large{
      \bfseries{PENGESAHAN} \\
    }
    \addcontentsline{toc}{section}{Pengesahan}
    \vspace{10mm}
    \MakeUppercase{\@title} \\
    \vspace{5mm}
    \large
    Diajukan untuk memenuhi sebagian persyaratan \\ memperoleh gelar Sarjana Komputer \\ 
    \vspace{10mm}
    Disusun oleh: \\ 
    \pnama \\
    NIM \pnim \\
    \vspace{5mm}
    Skripsi ini telah diuji dan dinyatakan lulus pada \\
    \ptanggalujian \\
    \vspace{5mm}
    Telah diperiksa dan disetujui oleh: \\
    \begin{center}
    \pembimbingtunggal{\@pembimbingdua}
    \vspace{10mm}
    \withkadep{\@kadep}
    \end{center}
  }
}

\newcommand{\pernyataanorisinalitas}{
  \newpage
  \centering{
    \bfseries\LARGE{
      PERNYATAAN ORISINALITAS \\
    }
  }
  \addcontentsline{toc}{section}{Pernyataan Orisinalitas}
  \vspace{10mm}
  \renewcommand{\baselinestretch}{1.2}
  \normalsize
  \justifying

  Saya menyatakan dengan sebenar-benarnya bahwa sepanjang pengetahuan saya, di  dalam naskah skripsi ini tidak terdapat karya ilmiah yang pernah diajukan oleh orang lain untuk memperoleh gelar akademik di suatu perguruan  tinggi, dan tidak terdapat karya atau pendapat yang pernah ditulis atau diterbitkan oleh orang lain, kecuali yang secara tertulis disitasi dalam naskah ini dan disebutkan dalam daftar referensi. 

  Apabila ternyata didalam naskah skripsi ini dapat dibuktikan terdapat unsur-unsur plagiasi, saya bersedia skripsi ini digugurkan dan gelar akademik yang telah saya peroleh (sarjana) dibatalkan, serta diproses sesuai dengan peraturan perundang-undangan yang berlaku (UU No. 20 Tahun 2003, Pasal 25 ayat 2 dan Pasal 70). 
}

% \renewcommand{\section}{%
%     \@startsection
%     {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
%     {1ex plus .2ex}{\large\sffamily\slshape\headlinecolor}%
% }

% \renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
% \setlength{\textwidth}{17.5cm}
% \setlength{\textheight}{22cm}
% \setcounter{secnumdepth}{0}
