%%
%% This is file `jitthesis-2026.cls',
%% NOT generated with the docstrip utility.
%% BUT modified from https://github.com/SuikaXhq/seu-bachelor-thesis-2022
%% 
%% The original source files were:
%%
%% jitthesis-2026.dtx  (with options: `cls')
%% 
%% [Original version for seu] Copyright (C) 2022 Haoqing Xu
%% School of Artificial Intelligence, Southeast University.
%% [Modified version for jit] Copyright (C) 2020-2027 Haixin Zhang
%% School of Information S&E, Southeast University.
%% --------------------------------------------------------------------------
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3c of this license or (at your option) any later
%% version. This version of this license is in
%%    http://www.latex-project.org/lppl/lppl-1-3c.txt
%% and the latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% The Current Maintainer of this work is Haoqing Xu.
%% 
%% Home Page of the Project: https://github.com/SuikaXhq/seu-bachelor-thesis-2022
%% --------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{jitthesis-2026}
  [2026/03/27 1.1.0 LaTeX Template for JIT Bachelor Thesis Class 2026]

\RequirePackage{ifxetex}
\RequireXeTeX

\input{jitthesis-2026.cfg}
\DeclareOption{win}{%
  \seut@font@wintrue
  \seut@font@macfalse
}
\DeclareOption{mac}{%
  \seut@font@winfalse
  \seut@font@mactrue
}
\DeclareOption{STfonts}{%
  \seut@font@STtrue
  \seut@font@FZfalse
  \seut@font@fandolfalse
}
\DeclareOption{FZfonts}{%
  \seut@font@STfalse
  \seut@font@FZtrue
  \seut@font@fandolfalse
}
\DeclareOption{fandol}{%
  \seut@font@STfalse
  \seut@font@FZfalse
  \seut@font@fandoltrue
}
\DeclareOption{globalcaption}{%
  \seut@caption@figure@globaltrue
  \seut@caption@table@globaltrue
  \seut@caption@equation@globaltrue
}
\DeclareOption{globaleq}{%
  \seut@caption@equation@globaltrue
}
\DeclareOption{globalfigure}{%
  \seut@caption@figure@globaltrue
}
\DeclareOption{globaltable}{%
  \seut@caption@table@globaltrue
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexrep}}
\ProcessOptions\relax

\LoadClass[UTF8,zihao=-4]{ctexrep}[2020/05/05]
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage[titles]{tocloft}
\RequirePackage[perpage]{footmisc}
\RequirePackage{enumitem}
\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{float}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage[ruled,linesnumbered]{algorithm2e}
\RequirePackage[hyphens]{url}
\RequirePackage{hyperref}
\hypersetup{
    hyperfootnotes=true,
    hyperindex=true,
    pageanchor=true,
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=0,
    breaklinks=true,
    colorlinks=false,
    linkcolor=black,
    plainpages=false,
    pdfpagelabels=true,
    pdfborder=0 0 0,
}
\urlstyle{same}
\RequirePackage[sort&compress]{gbt7714}
\RequirePackage{natbib}
\RequirePackage{hypernat}
\RequirePackage[nottoc]{tocbibind}        %  TOC Ref self
\RequirePackage{ifthen}
\RequirePackage{calc}
\RequirePackage{etoolbox}
\RequirePackage{xeCJKfntef}
\RequirePackage{doc}
\RequirePackage{pdfpages}

\geometry{
  a4paper,
  left=2.5cm,
  right=2cm,
  includehead=true,
  includefoot=true,
  headheight=22pt,
  headsep=0.5\jitt@const@length@skipbetweenword,
  footskip=22pt,
  top=1.5cm,
  bottom=1.75cm,
}

%% Convert 7 main fonts (\seut@var@str@font@xxx) to STRINGS in the cfg file.
\ifseut@font@win
\newcommand*{\seut@var@str@font@serif}      {\seut@const@str@font@serif@win}
\newcommand*{\seut@var@str@font@sans}       {\seut@const@str@font@sans@win}
\newcommand*{\seut@var@str@font@mono}       {\seut@const@str@font@mono@win}
\newcommand*{\seut@var@str@font@songti}     {\seut@const@str@font@songti@win}
\newcommand*{\seut@var@str@font@heiti}      {\seut@const@str@font@heiti@win}
\newcommand*{\seut@var@str@font@fangsong}   {\seut@const@str@font@fangsong@win}
\newcommand*{\seut@var@str@font@kaiti}      {\seut@const@str@font@kaiti@win}
\fi

\ifseut@font@mac
\newcommand*{\seut@var@str@font@serif}      {\seut@const@str@font@serif@mac}
\newcommand*{\seut@var@str@font@sans}       {\seut@const@str@font@sans@mac}
\newcommand*{\seut@var@str@font@mono}       {\seut@const@str@font@mono@mac}
\newcommand*{\seut@var@str@font@songti}     {\seut@const@str@font@songti@mac}
\newcommand*{\seut@var@str@font@heiti}      {\seut@const@str@font@heiti@mac}
\fi

\ifseut@font@FZ
\renewcommand*{\seut@var@str@font@songti}     {\seut@const@str@font@songti@FZ}
\renewcommand*{\seut@var@str@font@heiti}      {\seut@const@str@font@heiti@FZ}
\renewcommand*{\seut@var@str@font@fangsong}   {\seut@const@str@font@fangsong@FZ}
\renewcommand*{\seut@var@str@font@kaiti}      {\seut@const@str@font@kaiti@FZ}
\fi

\ifseut@font@ST
\renewcommand*{\seut@var@str@font@songti}     {\seut@const@str@font@songti@ST}
\renewcommand*{\seut@var@str@font@heiti}      {\seut@const@str@font@heiti@ST}
\renewcommand*{\seut@var@str@font@fangsong}   {\seut@const@str@font@fangsong@ST}
\renewcommand*{\seut@var@str@font@kaiti}      {\seut@const@str@font@kaiti@ST}
\fi

\ifseut@font@fandol
\renewcommand*{\seut@var@str@font@songti}     {\seut@const@str@font@songti@fandol}
\renewcommand*{\seut@var@str@font@heiti}      {\seut@const@str@font@heiti@fandol}
\renewcommand*{\seut@var@str@font@fangsong}   {\seut@const@str@font@fangsong@fandol}
\renewcommand*{\seut@var@str@font@kaiti}      {\seut@const@str@font@kaiti@fandol}
\fi

\xeCJKsetup{
  AutoFakeBold=true,
  AutoFakeSlant=true,
}

%% 设置4种中文字体（CJKzhsong，CJKzhhei，CJKzhfs，CJKzhkai，CJKmain，CJKsans，CJKmono）
%% 设置CJKzhsong为宋体，CJKzhhei为黑体
\setCJKfamilyfont{zhsong}{\seut@var@str@font@songti}
\setCJKfamilyfont{zhhei}{\seut@var@str@font@heiti}
%% 如果 不是mac字体集 ， 则 设置CJKzhfs为仿宋，CJKzhkai为楷体
\ifseut@font@mac\else
\setCJKfamilyfont{zhfs}{\seut@var@str@font@fangsong}
\setCJKfamilyfont{zhkai}{\seut@var@str@font@kaiti}
\fi
%% 设置CJKmain为宋体，CJKsans为黑体
\setCJKmainfont{\seut@var@str@font@songti}
\setCJKsansfont{\seut@var@str@font@heiti}
%% 如果 不是mac字体集 ， 则 设置CJKmono为仿宋
\ifseut@font@mac\else
\setCJKmonofont{\seut@var@str@font@fangsong}
\fi

%% 设置3种英文字体（serif，sans，mono）
\setmainfont{\seut@var@str@font@serif}
\setsansfont{\seut@var@str@font@sans}
\setmonofont{\seut@var@str@font@mono}

% Haixin： 补上缺失的楷体，因为ctex 宏包天生就自带\songti（宋体）、\heiti（黑体）、\fangsong（仿宋）
\newcommand{\kaiti}{\CJKfamily{zhkai}} 
% \newcommand{\songti}{\CJKfamily{zhsong}}
% \newcommand{\heiti}{\CJKfamily{zhhei}}
% \newcommand{\fangsong}{\CJKfamily{zhfs}}



% 定义两个私有命令：分别存储 章节纯数字、章节纯标题
\newcommand{\jitt@chapnum}{}   % 存储：1、2、3...（纯编号）
\newcommand{\jitt@chapname}{}  % 存储：绪论、摘要、目录...（纯标题）
% 重定义章节标记：自动捕获当前章节的编号和标题
\renewcommand{\chaptermark}[1]{
  \markboth{#1}{}
  \renewcommand{\jitt@chapname}{#1}        % 捕获标题
  \renewcommand{\jitt@chapnum}{\thechapter}% 捕获编号
}
% \pretocmd{\@schapter}{\renewcommand{\jitt@chapnum}{}}{}{}
\newcommand{\phantomchapter}[1]{%
  \renewcommand{\jitt@chapnum}{}% 清空章节编号
  \renewcommand{\jitt@chapname}{#1}% 赋值页眉标题
  \chaptermark{#1}% 更新LaTeX标准标记
  \@makeschapterhead{}\relax% 禁止显示文字、禁止入目录
}

%% fancyhdr 页眉页脚宏包 -- 定义4种样式 plain front main append
%% plain：无页眉页脚（封面 / 声明页专用）
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
%% front：仅页脚居中页码
\fancypagestyle{front}{%
  \fancyhf{}%
  \fancyhead[L]{\zihao{-5}\jitt@const@str@headertext}%
  \fancyhead[R]{\zihao{-5}\leftmark}%
  \fancyfoot[C]{\zihao{-5}\thepage}%
  \renewcommand{\headrulewidth}{1pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
%% main：完整页眉 + 页脚（正文主体用）
\fancypagestyle{main}{%
  \fancyhf{}%
  \fancyhead[L]{\zihao{-5}\jitt@const@str@headertext}%
  \fancyhead[R]{\zihao{-5}第\jitt@chapnum 章 \jitt@chapname}%
  \fancyfoot[C]{\zihao{-5}\thepage}%
  \renewcommand{\headrulewidth}{1pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
%% append：完整页眉 + 页脚（正文主体用）
\fancypagestyle{append}{%
  \fancyhf{}%
  \fancyhead[L]{\zihao{-5}\jitt@const@str@headertext}%
  \fancyhead[R]{\zihao{-5}附录\jitt@chapnum\ \ \leftmark}%
  \fancyfoot[C]{\zihao{-5}\thepage}%
  \renewcommand{\headrulewidth}{1pt}%
  \renewcommand{\footrulewidth}{0pt}%
}

%% 暂时显示用plain样式
\pagestyle{plain}




%% 定义\frontmatter命令：罗马页码 + 无编号 + front版页码(pure text)。
\newcommand{\frontmatter}{%
  \clearpage
  \pagenumbering{Roman}
  \pagestyle{front}
  % \setcounter{secnumdepth}{-2}
  \ctexset{
    chapter/numbering = true,
    chapter/pagestyle = front,
  }
}
%% 定义\mainmatter命令：阿拉伯页码 + 章节编号 + main页眉(123 text)。
\newcommand{\mainmatter}{%
  \clearpage
  \pagenumbering{arabic}
  \pagestyle{main}
  \ctexset{
    %secnumdepth = subsection,
    chapter/numbering = true,
    chapter/pagestyle = main,
  }
}
%% 定义\lastmatter命令：继续阿拉伯页码 + 无章节编号 + front版页眉(pure text)。
\newcommand{\lastmatter}{%
  %\clearpage
  %\pagenumbering{arabic}
  \pagestyle{front}
  \ctexset{
    %secnumdepth = subsection,
    chapter/numbering = false,
    chapter/pagestyle = front,
  }
}
%% 定义\appendixmatter命令：继续阿拉伯页码 + 章节编号 + append版页眉(ABC text)。
\newcommand{\appendixmatter}{%
  %\clearpage
  %\pagenumbering{arabic}
  \pagestyle{append}
  \ctexset{
    %secnumdepth = subsection,
    chapter/numbering = true,
    chapter/pagestyle = append,
  }
}







\newcommand*{\seut@control@mainlinespread}{\setstretch{\seut@const@num@linespread@main}}
\newcommand*{\seut@control@declarelinespread}{\setstretch{\seut@const@num@linespread@delaration}}
\newcommand*{\seut@control@toclinespread}{\setstretch{\seut@const@num@linespread@toc}}
\newcommand*{\seut@control@biblinespread}{\setstretch{\seut@const@num@linespread@bib}}
\linespread{\seut@const@num@linespread@main}
\newcommand*{\fixtitlespread}{\vspace*{-\jitt@const@length@skipbetweenword}}
\setdisplayskipstretch{0.5}

%%%%% chapter 和 section样式
\ctexset{
  contentsname = \seut@const@str@contentsname,
  appendixname = \seut@const@str@appendixname,
  bibname      = \seut@const@str@bibname,
  chapter = {
    format = {%
      \zihao{3}\centering\heiti%
    },
    aftername = \jitt@space{0.7},
    pagestyle = main,
    beforeskip = 10pt + 0.5\jitt@const@length@skipbetweenword,
    afterskip = 20pt + 0.5\jitt@const@length@skipbetweenword,
    fixskip = true,
    number=\arabic{chapter},
    name={,}
    % numbermark = \quad
  },
  section = {
    format = {%
      \zihao{-3}\heiti%
    },
    hang = false,
    aftername = \jitt@space{0.7} ,
    beforeskip = 15pt + 0.5\jitt@const@length@skipbetweenword,
    afterskip = 10pt + 0.5\jitt@const@length@skipbetweenword,
    fixskip = true,
  },
  subsection = {%
    format = {%
      \zihao{4}\heiti
    },
    hang = false,
    aftername = \ ,
    beforeskip = 12pt + 0.5\jitt@const@length@skipbetweenword,
    afterskip = 8pt + 0.5\jitt@const@length@skipbetweenword,
    fixskip = true,
  },
  appendix = {%
    name = {\appendixname},
  },
  %secnumdepth = subsection,
  %tocdepth    = subsection,
}

\setcounter{tocdepth}{2}
\setlist{
  itemsep = 0pt,
  topsep = 0pt,
  parsep = 0pt,
}


%% TOC 目录设定

\renewcommand{\cftchapfont}{\zihao{4}\normalfont}
\renewcommand{\cftsecfont}{\zihao{4}\normalfont}
\renewcommand{\cftsubsecfont}{\zihao{4}\normalfont}
\renewcommand{\cftchappagefont}{\zihao{4}\normalfont}
\renewcommand{\cftsecpagefont}{\zihao{4}\normalfont}
\renewcommand{\cftsubsecpagefont}{\zihao{4}\normalfont}
\cftsetindents{chapter}{\parindent}{1\ccwd}       %% 注意！！宽度3.5太大了
\cftsetindents{section}{2\parindent}{1.33em}
\cftsetindents{subsection}{3\parindent}{2em}
\setlength{\cftparskip}{0pt}
\setlength{\cftbeforechapskip}{4pt}
\setlength{\cftbeforesecskip}{0pt}
\setlength{\cftbeforesubsecskip}{0pt}
\renewcommand{\cftdot}{.}
\renewcommand{\cftdotsep}{0}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}
\cftsetpnumwidth{1em}

\ifseut@caption@figure@global
  \counterwithout{figure}{chapter}
  \renewcommand{\thefigure}{\arabic{figure}}
\else
  \counterwithin{figure}{chapter}
  \renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\fi
\ifseut@caption@table@global
  \counterwithout{table}{chapter}
  \renewcommand{\thetable}{\arabic{table}}
\else
  \counterwithin{table}{chapter}
  \renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\fi
\renewcommand{\thesubfigure}{(\alph{subfigure})}

\DeclareCaptionFont{xiaowuhei}{\zihao{-5}\heiti}
%% 图片caption的字体
\captionsetup[subfigure]{labelformat=simple}
\captionsetup[figure]{
    labelfont=xiaowuhei,  % 标签部分 ("图1-1")：黑体，小五号
    textfont=xiaowuhei,        % 说明文字部分：宋体，小四号
    labelsep=space,
    position=below
}
\captionsetup[table]{labelsep=space}
\captionsetup{font=small}
\captionsetup[subfigure]{font=small}
\captionsetup[table]{
    position=above,
    labelfont=xiaowuhei,
    textfont=xiaowuhei,
    labelsep=space
}



\setlength{\intextsep}{\jitt@const@length@skipbetweenword}
\setlength{\textfloatsep}{\jitt@const@length@skipbetweenword}
\setlength{\floatsep}{\jitt@const@length@skipbetweenword}
\setlength{\abovecaptionskip}{7pt}
\setlength{\belowcaptionskip}{7pt}
\setlength\heavyrulewidth{1pt}
\setlength\lightrulewidth{1pt}

\tikzset{seut@circled@node/.style={
    circle,
    draw,
    inner sep=0.05ex,
    text depth=0ex,
    font=\normalfont,
    minimum size=1ex
    }
}
\newcommand*\circled[1]{%
    \ifnumcomp{#1}{>}{9}{%
    % if > 9:
    \tikz[baseline=(char.base)]\node[seut@circled@node]
      (char) {\addfontfeature{LetterSpace=-9.0}\scalebox{0.5}[1]{\bfseries#1}};}{%
    % if <= 9:
    \tikz[baseline=(char.base)]\node[seut@circled@node] (char) {#1};}%
}
\renewcommand{\thefootnote}{%
    \raisebox{0.25ex}{%
    \scalebox{0.7}{\protect\circled{%
            \arabic{footnote}}%
        }%
    }%
}

\ifseut@caption@equation@global
  \counterwithout{equation}{chapter}
  \renewcommand{\theequation}{\arabic{equation}}
\else
  \counterwithin{equation}{chapter}
  \renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
\fi
\renewcommand{\algorithmcfname}{算法}

%% Refereces 参考文献部分
\AtBeginEnvironment{thebibliography}{%
  \seut@control@biblinespread
  \zihao{-4}
  % \phantomchapter{\seut@const@str@bibname}
}
\setlength{\bibsep}{0pt}

\renewcommand{\title}[2]{%
  \renewcommand*{\jitt@var@str@titlepage@title}{#1#2}
  \renewcommand*{\jitt@var@str@titlepage@title@up}{#1}
  \renewcommand*{\jitt@var@str@titlepage@title@down}{#2}}

\newcommand{\titleEN}[2]{%
  \renewcommand*{\jitt@var@str@titlepage@titleEN}{#1#2}
  \renewcommand*{\jitt@var@str@titlepage@titleEN@up}{#1}
  \renewcommand*{\jitt@var@str@titlepage@titleEN@down}{#2}}
  
\newcommand{\studentnum}[1]{\renewcommand*{\jitt@var@str@titlepage@studentnum}{#1}}
\renewcommand{\author}[1]{\renewcommand*{\jitt@var@str@titlepage@author}{#1}}
\newcommand{\department}[1]{\renewcommand*{\jitt@var@str@titlepage@department}{#1}}
\newcommand{\major}[1]{\renewcommand*{\jitt@var@str@titlepage@major}{#1}}
\newcommand{\supervisor}[1]{\renewcommand*{\jitt@var@str@titlepage@supervisor}{#1}}
\newcommand{\periodsubmit}[1]{\renewcommand*{\jitt@var@str@titlepage@periodsubmit}{#1}}
\newcommand{\perioddefense}[1]{\renewcommand*{\jitt@var@str@titlepage@perioddefense}{#1}}
\newcommand{\class}[1]{\renewcommand*{\jitt@var@str@titlepage@class}{#1}}
\newcommand{\seut@control@placeholder}[2][\linewidth]{\CJKunderline{\makebox[#1]{#2}}}


\def\seutplaceholder{\@ifnextchar[\seut@control@placeholder\CJKunderline}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% maketitle命令，设置主页
\renewcommand{\maketitle}{%
  \GetFileInfo{jitthesis-2026.cls}
  \hypersetup{
    pdfauthor={\jitt@var@str@titlepage@author},
    pdfcreator={\fileversion}
  }
  \begin{titlepage}
    \vspace*{29pt}
    % insert JIT text logo and 毕业论文（设计）
    \begin{centering}
      \includegraphics[width=9cm]{\jitt@const@path@titlepage@textlogo}\par
      \vspace{\jitt@const@length@skipbetweenword}\par
      {\songti\zihao{1}\textbf{\jitt@const@str@titlepage@logotitle}}\par
    \end{centering}
    % insert JIT badge logo
    \vspace*{30pt}
    \begin{centering}
        \includegraphics[width=3.4cm]{\jitt@const@path@titlepage@badgelogo}\par
    \end{centering}
    \vspace{30pt}
    {\centering
    \renewcommand*{\arraystretch}{1.58}
    \setlength{\tabcolsep}{0pt}
    \songti\zihao{3}
    \begin{tabular}{p{3.5cm}c}
      \makebox[3.5cm][r]{\textbf{\jitt@field@str@titlepage@title}}           % （统一 2.5cm、右对齐，工整）
      & \seutplaceholder[9.5cm]{\jitt@var@str@titlepage@title@up} \\ \relax
      \ifcsempty{seut@var@str@titlepage@title@down}{%
        &
      }{%
        & \seutplaceholder[9.5cm]{\jitt@var@str@titlepage@title@down}}
    \end{tabular}
    \par
    }

    \vspace{20pt}
    {\centering
    \renewcommand*{\arraystretch}{1.5}
    \setlength{\tabcolsep}{0pt}
    \zihao{-3}
    %% 没招了，始终无法居中对齐，只能在最右边添加一列了。唉。
    \begin{tabular}{p{3cm} c p{3cm} c p{1cm}}
      \makebox[3cm][r]{\jitt@field@str@titlepage@author}
      & \seutplaceholder[4.2cm]{\jitt@var@str@titlepage@author} 
      & \makebox[3cm][r]{\jitt@field@str@titlepage@supervisor}
      & \seutplaceholder[4.2cm]{\jitt@var@str@titlepage@supervisor} 
      & \jitt@space{1} \\ \relax
      
      \makebox[3cm][r]{\jitt@field@str@titlepage@department}
      & \seutplaceholder[4.2cm]{\jitt@var@str@titlepage@department} 
      & \makebox[3cm][r]{\jitt@field@str@titlepage@major}
      & \seutplaceholder[4.2cm]{\jitt@var@str@titlepage@major} 
      & \jitt@space{1} \\ \relax
      
      \makebox[3cm][r]{\jitt@field@str@titlepage@class}
      & \seutplaceholder[4.2cm]{\jitt@var@str@titlepage@class} 
      & \makebox[3cm][r]{\jitt@field@str@titlepage@studentnum}
      & \seutplaceholder[4.2cm]{\jitt@var@str@titlepage@studentnum} 
      & \jitt@space{1} \\ \relax
      
      \makebox[3cm][r]{\jitt@field@str@titlepage@periodsubmit}
      & \seutplaceholder[4.2cm]{\jitt@var@str@titlepage@periodsubmit}
      & \makebox[3cm][r]{\jitt@field@str@titlepage@perioddefense}
      & \seutplaceholder[4.2cm]{\jitt@var@str@titlepage@perioddefense}
      & \jitt@space{1}
    \end{tabular}
    \par
    }
  \end{titlepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% makedeclaration，原创性声明。 JIT 本科论文用不到，直接保留SEU版本
\newcommand{\makedeclaration}{%
  \begin{titlepage}
    \vspace*{52pt}
    \seut@control@declarelinespread
    {\centering
    \heiti\zihao{-2}
    \seut@const@str@declare@origin@title
    \par
    }
    \vspace{39pt}\par
    \seut@const@str@declare@origin@content\par
    \hspace*{\fill}\par
    \hangafter 0
    \hangindent 4\ccwd
    \noindent \seut@const@str@declare@authorsign\seutplaceholder[8\ccwd]{}\jitt@space{1.5}%
    \seut@const@str@declare@date\seutplaceholder[3.5\ccwd]{}年\seutplaceholder[2.5\ccwd]{}月%
      \seutplaceholder[2.5\ccwd]{}日\par
    \vspace{155pt}\par
    {\centering
    \heiti\zihao{-2}
    \seut@const@str@declare@usage@title
    \par
    }
    \vspace{22pt}\par
    \seut@const@str@declare@usage@content\par
    \hspace*{\fill}\par
    \seut@const@str@declare@authorsign\seutplaceholder[9.5\ccwd]{}\jitt@space{2}%
      \seut@const@str@declare@supervisorsign\seutplaceholder[11.5\ccwd]{}\par
    \seut@const@str@declare@date\seutplaceholder[3.5\ccwd]{}年\seutplaceholder[3\ccwd]{}月%
      \seutplaceholder[3\ccwd]{}日\jitt@space{3}%
    \seut@const@str@declare@date\seutplaceholder[2.5\ccwd]{}年\seutplaceholder[3\ccwd]{}月%
      \seutplaceholder[3\ccwd]{}日\par
  \end{titlepage}
}


%% 摘要
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\seut@control@keywords}[1]{%
  \def\nextitem{\def\nextitem{\jitt@var@str@abstractsep}}%
  \renewcommand*{\do}[1]{\nextitem##1}%
  \docsvlist{#1}}
%% Keywords 行

\newcommand{\keywordsCN}{
    \par\hspace*{\fill}\par
    \noindent
    {\heiti\zihao{4}\seut@var@str@keywords}
    \seut@control@keywords
}
\newcommand{\keywordsEN}{
    \par\hspace*{\fill}\par
    \noindent
    {\textbf{\zihao{4}\seut@var@str@keywords}}
    \seut@control@keywords
}

\newenvironment{abstractCN}{
    \renewcommand*{\seut@var@str@abstractname}{\seut@const@str@abstractname@zh}
    \renewcommand*{\seut@var@str@keywords}{\seut@const@str@keywords@zh}
    \renewcommand*{\jitt@var@str@abstractsep}{\jitt@const@str@abstractsep@zh}
    % -------------------- 标题格式 --------------------
    \clearpage
    % 取消chapter，直接添加目录索引
    \phantomchapter{\seut@var@str@abstractname}
    \phantomsection
    \addcontentsline{toc}{chapter}{\seut@var@str@abstractname} % 目录添加「摘要」
    
    \par
    {\centering\linespread{2.5}
    \heiti\zihao{-2}
    \jitt@var@str@titlepage@title  \par}
    
    \vspace{44pt}
    {\centering
    \heiti\zihao{3}
    \seut@var@str@abstractname  \par}
    \vspace{32pt}

    % Text
    \kaiti\zihao{-4}% 小四号楷体
    \linespread{1.6}\selectfont% 1.5倍行距
    \parindent=2\ccwd% 首行缩进2字符（中文标准）
    
}{
    % Recover to normal
    \par\linespread{1}\selectfont
    \songti
}


\newenvironment{abstractEN}{
    \renewcommand*{\seut@var@str@abstractname}{\seut@const@str@abstractname@en}
    \renewcommand*{\seut@var@str@keywords}{\seut@const@str@keywords@en}
    \renewcommand*{\jitt@var@str@abstractsep}{\jitt@const@str@abstractsep@en}
    % leading
    \clearpage
    % 取消chapter，直接添加目录索引
    \phantomchapter{\seut@var@str@abstractname}
    \phantomsection
    \addcontentsline{toc}{chapter}{\seut@var@str@abstractname} % 目录添加「摘要」
    
    \par
    {\centering
    \textbf{\zihao{-2}\jitt@var@str@titlepage@titleEN}
    \par}

    \vspace{44pt}
    {\centering
    \textbf{\zihao{3}
    \seut@var@str@abstractname}
    \par}
    \vspace{32pt}

    % Text
    \normalfont\zihao{-4}
    \linespread{1.6}\selectfont
    \parindent=2\ccwd
}{
    % Recover to normal
    \par\linespread{1}\selectfont
    \songti
}



\newenvironment{acknowledgement}{%
  \lastmatter
  \ctexset{chapter/numbering=false}
  % \setcounter{secnumdepth}{-2}
  \chapter{\seut@const@str@acknowledgename   }
}{%
  \mainmatter
  \ctexset{chapter/numbering=true}
  % \setcounter{secnumdepth}{2}
}
\endinput
%%
%% End of file `jitthesis-2026.cls'.
