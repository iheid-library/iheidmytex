%-------------------------- identification ---------------------
% iheiddiss v0.1.0
% By James Hollway <james.hollway@graduateinstitute.ch>
% Original v0.0.1 based on ociamthesis v2.2 by Keith A. Gillow <gillow@maths.ox.ac.uk>
%
% Note that this template attempts to model the official PhD Dissertation template, available at:
% https://graduateinstitute.ch/sites/default/files/2019-07/PhD_Specimen_6_first_pages.docx

\LoadClass[12pt,a4paper,twoside]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iheid}[2020/05/06 Graduate Institute Geneva Dissertation Class]

% Setup document % % %
\RequirePackage{geometry}
\geometry{dvips,a4paper,margin=0.75in}
\linespread{1.5} % adjust line spacing
\RequirePackage{ragged2e} % this offers options for centering, justification, etc.

% Setup fonts % % %
\RequirePackage[T1]{fontenc}
%\RequirePackage[utf8]{inputenc}
\RequirePackage{microtype} % this makes fonts almost imperceptibly smoother
\RequirePackage{fontspec}
% For the headings we will use Helvetica
\RequirePackage{helvet}
\RequirePackage{sectsty}
\allsectionsfont{\sffamily}
% For the main text and equations we will use Baskerville and Palatino
\RequirePackage{mathpazo}
\RequirePackage{baskervald}
% For formatting code or package names, we will use Lucida Console
\RequirePackage{zi4}

% Setup figures % % %
\RequirePackage[]{graphicx}

% Setup bibliography % % %
\RequirePackage[backend=biber, % if this doesn't work for you, use bibtex8 as a backend
%style=verbose, % use this if you are in the law department
style=authoryear, % use this if you are in any other department
maxcitenames=3, % how many authors to cite before resorting to ``et al''
maxbibnames=99, % in the bibliography we want them all though
sortcites=true, % this re-sorts citations alphabetically when you cite several at once
hyperref=true, % this adds a link to a citations date that points to the reference
%backref=true, % references state on which page they are cited
abbreviate=true,
url=false, % don't add (lengthy) URL information
doi=false, % don't add (lengthy) DOI information
autolang=hyphen]{biblatex}
% The following is where you put the path to your bibliography:
\addbibresource{mybib.bib}

% Setup meta-data of your project
\newcommand{\mytitle}{Your Project Title}
\newcommand{\mylastname}{Name}
\newcommand{\myfirstname}{Your}
\newcommand{\myprogramme}{PhD in Your Department}
\newcommand{\mythesisno}{99999} % provided by PhD secretariat
\newcommand{\mykeywords}{your, keywords} % only used for PDF metadata
\newcommand{\mysubject}{Theme of your thesis} % only used for PDF metadata
\newcommand{\mylogo}{Logo_CMYK_Hi.eps} % file name of the IHEID logo

% Define title and author (don't touch this unless you know what you're doing)
\title{\mytitle}
\newcommand{\myauthor}{\myfirstname {} \mylastname}
\author{\myauthor}

% Setup links and PDF metadata
\RequirePackage[colorlinks=true,linkcolor=black,citecolor=red,filecolor=red,urlcolor=red, bookmarks]{hyperref} % uses IHEID red for external links
\hypersetup{
pdftitle = {\mytitle},
pdfsubject = {\mysubject},
pdfauthor = {\myauthor},
pdfkeywords = {\mykeywords},
draft = false, % activates package
}
\RequirePackage{hypcap} % fix for more precise in-document links

% Setup graphics directory
% The following is where you put all graphics you include, using the '\includegraphics' command
% Note that this directory must have a copy of the IHEID logo, as referenced with the '\mylogo' command above
\graphicspath{{./Graphics/}} % here we point to the directory named 'Graphics' inside the directory of this file

% Setup header and footer
\RequirePackage{fancyhdr} % package to customize page headers
\pagestyle{fancy}
\fancyhead[HLO]{\mytitle} % set header: H = header, L = left side, O = odd page number
\fancyhead[HRE]{\myauthor} % set header: H = header, R = right side, E = even page number
\fancyhead[HRO,HLE]{\thepage} % set header: page number on left/right side
\cfoot{} % set footer: leave empty
\renewcommand{\headrulewidth}{0.01pt} % header line width
\renewcommand{\footrulewidth}{0pt} % footer line width (set to 0 to remove)
\fancypagestyle{firstpages} { % different header and footer for title page(s)
	\fancyhf{} % clear header and footer
	\renewcommand{\headrulewidth}{0pt} % remove header line
	\renewcommand{\footrulewidth}{0pt} % remove footer line
}

% Setup custom title format
\makeatletter
\renewcommand\maketitle
  {\vspace*{5cm} % distance from top of page to title
  \centering{
  \Large\sffamily\textbf{\@title}
  \vspace{1cm}\par % distance to programme statement
  \centering\large\sffamily\textbf{THESIS}\\
  submitted at the Graduate Institute\\
  in fulfillment of the requirements of the\\
  \myprogramme
  \vspace*{0.5cm}\par % distance to author
  \centering\large\sffamily{
	by\\
	\vspace{0.5cm} % distance between 'by' and author name
	\@author
  }
  \bigskip\par
  }
  }
\makeatother
