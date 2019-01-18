%-------------------------- identification ---------------------
% iheiddiss v0.0.1
% By James Hollway <james.hollway@graduateinstitute.ch>
% Based on ociamthesis v2.2 by Keith A. Gillow <gillow@maths.ox.ac.uk>

\LoadClass[12pt,a4paper]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iheid}[2019/01/18 Graduate Institute Geneva Dissertation Class]

% Setup document % % %
\RequirePackage{geometry}
\geometry{dvips,a4paper,margin=0.75in}
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
% change the following only if you know what you are doing:
maxcitenames=3, % how many authors to cite before resorting to ``et al''
maxbibnames=99, % in the bibliography we want them all though
sortcites=true, % this re-sorts citations when you cite several at once
hyperref=true, % this adds a link to a citations date that points to the reference
%backref=true, % references state on which page they are cited
abbreviate=true,
url=false, % don't add (lengthy) URL information
doi=false, % don't add (lengthy) DOI information
autolang=hyphen]{biblatex}
% The following is where you put the path to your bibliography:
\addbibresource{~/Dropbox/library.bib}

% Setup links % % %
% Keep the following in the following order, or else they may break!
\RequirePackage{varioref}
\RequirePackage[colorlinks=true,citecolor=red,linkcolor=red,urlcolor=red]{hyperref} % Let's use IHEID red
\RequirePackage[hypcap]{caption}
\RequirePackage{cleveref}

