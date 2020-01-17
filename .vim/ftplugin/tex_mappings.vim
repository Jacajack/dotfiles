inoremap ;bf \textbf{}<Esc>T{i
inoremap ;it \textit{}<Esc>T{i
inoremap ;tt \texttt{}<Esc>T{i
inoremap ;sc \textsc{}<Esc>T{i

inoremap ;cc \cite{}<Esc>T{i

inoremap ;nn \begin{enumerate}<Return>\end{enumerate}<Esc>ko
inoremap ;bb \begin{itemize}<Return>\end{itemize}<Esc>ko

inoremap ;ni \noindent
inoremap ;nl \newline
inoremap ;ii \item

inoremap ;ff <Esc>gwapa
nnoremap ;ff gwap

set spell
set spelllang=pl,en
hi clear SpellBad
hi SpellBad cterm=underline
hi SpellBad ctermfg=078
