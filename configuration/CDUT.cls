% !Mode:: "TeX:UTF-8"
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{configuration/CDUT}[2021/8/17 Undergraduate thesis of School of Geophysics, Chengdu University of Technology]
%%%============================载入类========================%%%
\LoadClass[zihao=-4,a4paper,twoside,fontset=none,openright]{ctexbook}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions

%%%============================宏包载入========================%%%
\RequirePackage{amsmath,amssymb}          % 公式及符号的包
\RequirePackage{graphicx}                 % 处理图片的包
\RequirePackage{color,xcolor}             % 支持彩色
\RequirePackage{url}                      % 超链接
\RequirePackage{longtable}                % 做长表格的包
\RequirePackage{booktabs}                 % 做三线表的包
\RequirePackage{multirow}                 % 做组合行列表的包
\RequirePackage{bm}                       % 处理数学公式中的黑斜体的包
\RequirePackage{tikz}
\RequirePackage{xeCJKfntef}
%\RequirePackage{emptypage}
\RequirePackage{xeCJK}
\RequirePackage{appendix}
%%%============================字体设置========================%%%
\setmainfont{Times New Roman}        %缺省英文字体 Times New Roman
\setCJKmainfont[Path=configuration/]{simsun.ttf}          %宋体
\setCJKsansfont[Path=configuration/]{simhei.ttf}          %黑体
\setCJKmonofont[Path=configuration/]{simsun.ttf}          %宋体
%------------------------------------------------------------------------
\setCJKfamilyfont{song}[Path=configuration/]{simsun.ttf}  %导入宋体字体
\newcommand{\song}{\CJKfamily{song}} %设置宋体快捷命令
%------------------------------------------------------------------------
\setCJKfamilyfont{kai}[Path=configuration/]{simkai.ttf}   %导入楷书字体
\newcommand{\kai}{\CJKfamily{kai}}   %设置楷书快捷命令
%------------------------------------------------------------------------
\setCJKfamilyfont{hei}[Path=configuration/]{simhei.ttf}   %导入黑体字体
\newcommand{\hei}{\CJKfamily{hei}}   %设置黑体快捷命令

%%%============================页面布局========================%%%
\RequirePackage{fancyhdr,hyperref}%加入页眉与生成PDF文件中目录与超链接的包
\hypersetup{pdfencoding=auto,colorlinks=true,allcolors=black}%关于超链接的设置
\RequirePackage[top=3truecm,bottom=2.9truecm,left=2.8truecm,right=2.5truecm,xetex]{geometry}    % 页面布局设置

%%%==============================行距设置==============================%%%
\linespread{1.3}                 %1.5倍行距

%%%============================封面页信息录入========================%%%
\newtoks\fenleihao         %中图分类号
\newtoks\bianhao           %学校编号
\newtoks\UDC               %《国际十进制分类法UDC》的类号
\newtoks\miji              %密级
\newtoks\zhidaojiaoshi     %指导教师姓名及职称
\newtoks\Schoolname        %学院英文名
\newtoks\timing            %题名和副题名
\newtoks\zuozhexingming    %作者姓名
\newtoks\xueweijibie       %申请学位级别
\newtoks\zhuanye           %专业名称
\newtoks\tijiaoriqi        %论文提交日期
\newtoks\dabianriqi        %论文答辩日期
\newtoks\shouyudanwei      %学位授予单位及日期
\newtoks\xuehao            %学号
\newtoks\futiming          %副题名
\newtoks\ENtiming          %英文题名
\newtoks\ENfutiming        %英文副题名
%%%============================页眉页脚========================%%%
%----------------分隔线----------------%
\renewcommand{\headrulewidth}{0.5pt}         %在页眉下画一个0.5pt宽的分隔线
\renewcommand{\footrulewidth}{0pt}           % 在页脚不画分隔线。
%----------------设置非章首页的页眉页脚----------------%
\pagestyle{fancyplain}                       %页面样式
\fancyhf{}                                   %清除以前对页眉页脚的设置
\fancyhead[CE]{\song \zihao{-5} 成都理工大学地球物理学专业硕士学位论文}                                              %偶数页页眉为院校年届信息
 \fancyhead[CO]{\song \zihao{-5} \leftmark}  %奇数页页眉为章节名
 \fancyfoot[C]{\song \zihao{-5} \thepage} 
%----------------设置章首页页眉页脚----------------%
\fancypagestyle{plain}
{
\fancyhf{}                                    
\fancyhead[c]{\song \zihao{-5} \leftmark}
\fancyfoot[C]{\song \zihao{-5} \thepage}
}

%%%============================封面页设置========================%%%
\def\maketitle{%
  \null
  \thispagestyle{empty}%
  %\vspace*{-2cm}
%----------------第一页----------------%
  \begin{center}\leavevmode
    {\song \zihao{4}%
    \begin{tabular}{lp{3cm}p{3cm}lp{3cm}l}
      \raisebox{-0.5ex}[0pt]{\makebox[1.5cm][s]{分\hfill 类\hfill 号}} &{}\hfill\raisebox{-0.5ex}[0pt]{\makebox[3cm][c]{\the\fenleihao }}\hfill{} &  &
      \raisebox{-0.5ex}[0pt]{\makebox[1.5cm][s]{密\hfill 级}} & {}\hfill\raisebox{-0.5ex}[0pt]{\makebox[3cm][c]{\the\miji}}\hfill{} & \\ \cline{2-2}\cline{5-5}
      \raisebox{-0.5ex}[0pt]{\makebox[1.5cm][s]{U\hfill D\hfill C} } & {}\hfill\raisebox{-0.5ex}[0pt]{\makebox[3cm][c]{\the\UDC}}\hfill{}      &  &
      \raisebox{-0.5ex}[0pt]{\makebox[1.5cm][s]{编\hfill 号}} & {}\hfill\raisebox{-0.5ex}[0pt]{\makebox[3cm][c]{\the\bianhao}}\hfill{}   & \\ \cline{2-2}\cline{5-5}
    \end{tabular}
    }
    \par
    \vspace*{2.5cm} %插入空白

    \begin{figure}[!htb]
    \centering
     \includegraphics[width=0.6\textwidth]{成都理工大学.png}
     \end{figure}

    %{\song \zihao{0} \ziju{0.5} %成都理工大学
    %\textbf{成都理工大学}}\\
    \vspace{0.5cm}
    {\song \zihao{2} \ziju{0.5}
    \textbf{地球物理学专业硕士学位论文}\\}
    %\vspace{1cm}
     \vfill\vfill
    {\song \zihao{4}
   \begin{tabular}{l}
     \ifthenelse{\equal{\the\futiming}{}}{\raisebox{-3ex}[0pt]{{\bfseries 题名和副题名 }\underline{\makebox[11cm][c]{\bfseries \the\timing}}}}{\raisebox{-3ex}[0pt]{{\bfseries 题名和副题名 }\underline{\makebox[11cm][c]{\bfseries \shortstack[c]{\the\timing \\ \the\futiming }}}}}
      \\[3ex]
      \raisebox{-3ex}[0pt]{\textbf{作者姓名}\underline{\makebox[12cm][c]{\textbf{ \the\zuozhexingming}}}}
      \\[3ex]
      \raisebox{-3ex}[0pt]{\textbf{指导教师姓名及职称}\underline{\makebox[7cm][c]{\textbf{\the\zhidaojiaoshi}}\makebox[2.5cm][c]{}}}
      \\[3ex]
      \raisebox{-3ex}[0pt]{\textbf{申请学位级别}\underline{\makebox[4cm][c]{\textbf{\the\xueweijibie}}}\textbf{专业名称}\underline{\makebox[4.9cm][c]{\textbf{\the\zhuanye}}}}
      \\[3ex]
      \raisebox{-3ex}[0pt]{\textbf{论文提交日期}\underline{\makebox[4cm][c]{\textbf{\the\tijiaoriqi}}}\textbf{论文答辩日期}\underline{\makebox[4cm][c]{\textbf{\the\dabianriqi}}}}
      \\[3ex]
      \raisebox{-3ex}[0pt]{\textbf{学位授予单位和日期}\underline{\makebox[9.5cm][c]{\textbf{\the \shouyudanwei）}}}}
      \\[3ex]
      \raisebox{-3ex}[0pt]{\makebox[7.1cm][c]{}\textbf{答辩委员会主席}\underline{\makebox[3.5cm][c]{}}}
      \\[3ex]
     \end{tabular}
    }
    \par
    \vspace{25mm}
    {
    {\song \zihao{4} \textbf{\@date} \par}%封面页底部日期
    }
  \end{center}

  \null
  \newpage
  \thispagestyle{empty}
  \cleardoublepage

%----------------第二页----------------%
  \newpage
  \thispagestyle{empty}
  \begin{center}\leavevmode
    {\song \zihao{4}%
    \begin{tabular}{l}
     \raisebox{-0.5ex}[0pt]{\makebox[1.5cm][s]{分\hfill 类\hfill 号}\underline{\makebox[3.6cm][c]{\the\fenleihao}}
     \makebox[1.9cm][c]{}
     \makebox[2cm][s]{学\hfill 校\hfill 代\hfill 码}\underline{\makebox[5cm][c]{\the\bianhao}}}
     \\
     \raisebox{-0.5ex}[0pt]{\makebox[1.5cm][s]{U\hfill D\hfill C} \underline{\makebox[3.5cm][c]{\the\UDC}}
     \makebox[1.9cm][c]{}
     \makebox[1cm][s]{密\hfill 级}\underline{\makebox[2cm][c]{\the\miji}}
     \makebox[1cm][s]{学\hfill 号}\underline{\makebox[2.9cm][l]{\the\xuehao}} }
    \end{tabular}
    }
    \par
    \vspace*{2.5cm} %插入空白
    {\song \zihao{2}  %成都理工大学硕士学位论文
    \textbf{成都理工大学地球物理学专业硕士学位论文}}\\
    \vspace{1.5cm}
    {\hei \zihao{2}  %论文题目
    \textbf{\shortstack[c]{\the\timing \\ \the\futiming }}}\\
    \vspace{1cm}
    {\song \zihao{3}  %作者
    \the\zuozhexingming}\\
%    \vspace{4cm}
     \vfill\vfill
    {\song\zihao{4}
   \begin{tabular}{l}
      
      \raisebox{-3ex}[0pt]{指导教师姓名及职称\underline{\makebox[7cm][c]{\the\zhidaojiaoshi}\makebox[2.5cm][c]{}}}
      \\[3ex]
      \raisebox{-3ex}[0pt]{申请学位级别\underline{\makebox[4cm][c]{\the\xueweijibie}}专业名称\underline{\makebox[4.9cm][c]{\the\zhuanye}}}
      \\[3ex]
      \raisebox{-3ex}[0pt]{论文提交日期\underline{\makebox[4cm][c]{\the\tijiaoriqi}}论文答辩日期\underline{\makebox[4cm][c]{\the\dabianriqi}}}
      \\[3ex]
       \raisebox{-3ex}[0pt]{学位授予单位和日期\underline{\makebox[9.5cm][c]{\the \shouyudanwei}}}
      \\[3ex]
     \end{tabular}
    }
    \par
    %\vfill
    %\vfill
    \vspace{55mm}
    {
    {\song \zihao{4} \@date \par}
    }
  \end{center}

  \null
  \newpage
  \thispagestyle{empty}
  \cleardoublepage
  }

%%%============================摘要及关键词========================%%%
\newcommand\cnabstractname{摘要} 
\newcommand\enabstractname{Abstract}
\newcommand\cnkeywords[1]{ {\noindent\bfseries\song \zihao{-4}\cnkeywordsname: }#1}
\newcommand\cnkeywordsname{关键词}
\newcommand\enkeywords[1]{ {\noindent\bfseries\zihao{-4}\enkeywordsname: }#1}
\newcommand\enkeywordsname{Keywords}
%----------------中文摘要环境----------------%
\newenvironment{cnabstract}{
    %\newpage
\chapter[\cnabstractname]{\hei \bfseries \zihao{-3} {\shortstack[c]{\the\timing \\ \the\futiming }}}
    \song\zihao{-4}
    \@afterheading}
    {\par}
%----------------英文摘要环境----------------%
\newenvironment{enabstract}{
    %\newpage
    \chapter[\enabstractname]{\bfseries \zihao{-3} {\shortstack[c]{\the\ENtiming \\ \the\ENfutiming}}}
    \zihao{-4}
    \@afterheading}
    {\par}
    
%%%=============================杂项新定义============================%%%
%---------------------------自定义命令---------------------------%
\renewcommand{\contentsname}{目\qquad 录}%将“Contents”更改成“目录”
\newcommand\acknowledgement{\chapter*{\ziju{1}致谢}}
\newcommand\reseachresult{\chapter*{\ziju{1}结论}}
\newcommand\achievement{\chapter{攻读学位期间取得学术成果}}
\newcommand{\unlink}[2]{\underline{\href{#1}{#2}}}%加下划线的超链接
\renewcommand{\eqref}[1]{\textup{{\normalfont（\ref{#1}）\normalfont}}}%公式引用使用中文括号
%---------------------------满宽度表格---------------------------%
\RequirePackage{tabularx, makecell}
\newcolumntype{L}{X}
\newcolumntype{C}{>{\centering \arraybackslash}X}
\newcolumntype{R}{>{\raggedleft \arraybackslash}X}

%%%=============================标题设置============================%%%
\RequirePackage[labelsep=quad]{caption}
\RequirePackage{subcaption}

%---------------------------章节标题设置---------------------------%
\ctexset{chapter={format+={\hei \zihao{-2}},number=\chinese{chapter},name={第,章},afterskip={30pt},beforeskip={20pt}}}%一级标题设置
\ctexset{section={format+={\hei \zihao{-3}\raggedright}}}%二级标题设置
\ctexset{subsection={format+={\hei \zihao{4}\raggedright}}}%三级标题设置
\ctexset{subsubsection={format={\hei \zihao{-4}\bf\raggedright}}}%三级标题设置
\setcounter{tocdepth}{4}%增加目录深度
\setcounter{secnumdepth}{4}%增加编号深度

%---------------------------图表标题设置---------------------------%
\renewcommand\figurename{\hei\zihao{5} 图}  
\renewcommand\tablename{\hei\zihao{5} 表}
\newcommand{\chartname}[1]{\caption{\hei\zihao{5} #1}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}

%%%==============================图片路径==============================%%%
\graphicspath{{figures/}}        % 图片放在 figures 文件夹.
\allowdisplaybreaks
\endlinechar `\^^M

%%%==============================参考文献==============================%%%
%\usepackage[backend=biber,style=gb7714-2015, gbnamefmt=lowercase,gbstyle=false]{biblatex}%国标2015顺序编码制
\usepackage[backend=biber,style=gb7714-2015ay,gbnoauthor=true,gbpub=true,gbnamefmt=lowercase,gbstyle=false,sortlocale=zh__stroke,gblanorder=ch;jp;en;ru;]{biblatex}%国标著者-出版年制
%----------------文献库导入----------------%
\addbibresource{ref.bib}

%%%=========================列表环境相关设置========================%%%
%---------------------------列表样式---------------------------%
\RequirePackage{enumerate, enumitem}
\setlist{noitemsep}

%----------------在列表环境中抑制额外的行间距----------------%
\makeatletter \setlength\partopsep{0pt}
\def\@listI{\leftmargin\leftmargini
            \parsep 0pt
            \topsep \parsep
            \itemsep \parsep}
\@listI
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiv{\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listv{\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listvi{\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
%----------------更改列表环境的默认边界----------------%
\setlength\leftmargini   {2\ccwd} \setlength\leftmarginii
{\leftmargini} \setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini} \setlength\leftmarginv
{\ccwd} \setlength\leftmarginvi  {\ccwd} \setlength\leftmargin
{\leftmargini} \setlength\labelsep      {.5\ccwd}
\setlength\labelwidth    {\leftmargini}
\setlength\listparindent{2\ccwd}
%----------------更改列表环境中条目下的段落的缩进----------------%
\def\list#1#2{\ifnum \@listdepth >5\relax \@toodeep
     \else \global\advance\@listdepth\@ne \fi
  \rightmargin \z@ \listparindent2\ccwd \itemindent \z@
  \csname @list\romannumeral\the\@listdepth\endcsname
  \def\@itemlabel{#1}\let\makelabel\@mklab \@nmbrlistfalse #2\relax
  \@trivlist
  \parskip\parsep \parindent\listparindent
  \advance\linewidth -\rightmargin \advance\linewidth -\leftmargin
  \advance\@totalleftmargin \leftmargin
  \parshape \@ne \@totalleftmargin \linewidth
  \ignorespaces}
\makeatother

\endinput

