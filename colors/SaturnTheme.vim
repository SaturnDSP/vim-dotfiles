" Todo: add atribution to the original author
" Todo: simplify the living shit out of this theme file.
"       in order to make it easier to add more syntax for other languages and
"       so on....

" GruberDarker Theme for Vim
"
" Adapted from an Emacs theme: 
" https://github.com/rexim/gruber-darker-theme
" 
" Colorscheme template: https://github.com/mhartington/oceanic-next/blob/master/colors/OceanicNext.vim
" --------------------------------------------

" {{{ Setup
  set background=dark
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
  let g:colors_name="SaturnTheme"
" }}}
" {{{ Italics
  let g:gruber_terminal_italic = get(g:, 'gruber_terminal_italic', 0)
  let s:italic = ""
  if g:gruber_terminal_italic == 1
    let s:italic = "italic"
  endif
"}}}
" {{{ Bold
  let g:gruber_terminal_bold = get(g:, 'gruber_terminal_bold', 0)
  let s:bold = ""
  if g:gruber_terminal_bold == 1
   let s:bold = "bold"
  endif
"}}}
" {{{ Colors
  let s:gruberMain=['#ff7733', '220']
  let s:gruberFG=['#e4e4ef', '253']
  let s:gruberFG1=['#f4f4ff', '254']
  let s:gruberFG2=['#f5f5ff', '240']
  let s:gruberFG3=['#65737e', '243']
  let s:gruberWhite=['#ffffff', '15']
  let s:gruberBlack=['#000000', '0']
  let s:gruberBG=['#181818', '233']
  let s:gruberBG1=['#282828', '235']
  let s:gruberBG2=['#453d41', '238']
  let s:gruberLightRed=['#c73c3f', '203']
  let s:gruberRed=['#f43841', '160']
  let s:gruberNiagara=['#96a6c8', '147']
  let s:gruberQuartz=['#95a99f', '108']
  let s:gruberGreen=['#73c936', '70']
  let s:gruberBrown=['#cc8c3c', '172']
  let s:gruberPurple=['#9e95c7', '98']
  let s:gruberLightBlue=['#0087d7', '32']
  let s:gruberBlue=['#0000d7', '20']
  let s:gruberGold=['#d7af00', '178']
  let s:none=['NONE', 'NONE']

" {{{ Highlight function
function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction
" }}}
" {{{ call <sid>:hi(group, fg, bg, gui, guisp)
call <sid>hi('Bold',          '',                 '',           'bold',    '')
call <sid>hi('Debug',         s:gruberFG2,        '',           '',        '')
call <sid>hi('Directory',     s:gruberLightBlue,  '',           '',        '')
call <sid>hi('ErrorMsg',      s:gruberWhite,      s:gruberRed,  '',        '')
call <sid>hi('Exception',     s:gruberBrown,      '',           '',        '')
call <sid>hi('FoldColumn',    s:gruberBrown,      s:gruberFG2,  '',        '')
call <sid>hi('Folded',        s:gruberBrown,      s:gruberFG2,  s:italic,  '')
call <sid>hi('IncSearch',     s:gruberBlack,      s:gruberFG2,  'NONE',    '')
call <sid>hi('Italic',        '',                 '',           s:italic,  '')

call <sid>hi('Macro',         s:gruberFG,         '',            '',        '')
call <sid>hi('MatchParen',    s:gruberBG2,         s:gruberMain, '',        '')
call <sid>hi('ModeMsg',       s:gruberFG2,        '',            '',        '')
call <sid>hi('MoreMsg',       s:gruberFG2,        '',            '',        '')
call <sid>hi('Question',      s:gruberNiagara,    '',            '',        '')
call <sid>hi('Search',        s:gruberBlack,      s:gruberMain,  '',        '')
call <sid>hi('SpecialKey',    s:gruberFG2,        '',            '',        '')
call <sid>hi('TooLong',       s:gruberFG2,        '',            '',        '')
call <sid>hi('Underlined',    s:gruberPurple,     '',            '',        '')
call <sid>hi('Visual',        '',                 s:gruberBG2,   '',        '')
call <sid>hi('VisualNOS',     s:gruberRed,        '',            '',        '')
call <sid>hi('WarningMsg',    s:gruberRed,        '',            '',        '')
call <sid>hi('WildMenu',      s:gruberBlack,      s:gruberMain,  '',        '')
call <sid>hi('Title',         s:gruberQuartz,     '',            '',        '')
call <sid>hi('Conceal',       s:gruberFG,         s:gruberBG,    '',        '')
call <sid>hi('Cursor',        s:gruberBG,         s:gruberFG,    '',        '')
call <sid>hi('NonText',       s:gruberFG2,        '',            '',        '')
call <sid>hi('Normal',        s:gruberFG,         s:gruberBG,    '',        '')
call <sid>hi('EndOfBuffer',   s:gruberFG,         s:gruberBG,    '',        '')
call <sid>hi('LineNr',        s:gruberFG,         s:gruberBG,    '',        '')
call <sid>hi('SignColumn',    s:none,             s:none,        '',        '')
call <sid>hi('VertSplit',     s:gruberFG2,        s:gruberBG1,   '',        '')
call <sid>hi('ColorColumn',   '',                 s:gruberBG2,   '',        '')
call <sid>hi('CursorColumn',  '',                 s:gruberBG2,   '',        '')
call <sid>hi('CursorLine',    '',                 s:gruberBG2,   'NONE',    '')
call <sid>hi('CursorLineNr',  s:gruberMain,       s:gruberBG,    '',        '')
call <sid>hi('PMenu',         s:gruberFG,         s:gruberBG1,   '',        '')
call <sid>hi('PMenuSel',      s:gruberFG,         s:gruberBG2,   '',        '')
call <sid>hi('PmenuSbar',     '',                 s:gruberBG,    '',        '')
call <sid>hi('PmenuThumb',    '',                 s:gruberBG,    '',        '')
call <sid>hi('helpExample',   s:gruberMain,       '',            '',        '')
call <sid>hi('helpCommand',   s:gruberMain,       '',            '',        '')

" Standard syntax highlighting
call <sid>hi('Boolean',       s:gruberPurple,     '',            '',          '')
call <sid>hi('Character',     s:gruberGreen,      '',            '',          '')
call <sid>hi('Comment',       s:gruberBrown,      '',            s:italic,    '')
call <sid>hi('Conditional',   s:gruberMain,       '',            '',          '')
call <sid>hi('Constant',      s:gruberPurple,     '',            '',          '')
call <sid>hi('Define',        s:gruberMain,       '',            '',          '')
call <sid>hi('Delimiter',     s:gruberFG,         '',            '',          '')
call <sid>hi('Float',         s:gruberPurple,     '',            '',          '')
call <sid>hi('Function',      s:gruberNiagara,    '',            '',          '')
call <sid>hi('Identifier',    s:gruberNiagara,    '',            '',          '')
call <sid>hi('Include',       s:gruberMain,       '',            '',          '')
call <sid>hi('Keyword',       s:gruberMain,       '',            '',          '')
call <sid>hi('Label',         s:gruberFG,         '',            '',          '')
call <sid>hi('Number',        s:gruberPurple,     '',            '',          '')
call <sid>hi('Operator',      s:gruberFG,         '',            '',          '')
call <sid>hi('PreProc',       s:gruberFG1,        '',            '',          '')
call <sid>hi('Repeat',        s:gruberMain,       '',            '',          '')
call <sid>hi('Special',       s:gruberMain,       '',            '',          '')
call <sid>hi('SpecialChar',   s:gruberMain,       '',            '',          '')
call <sid>hi('Statement',     s:gruberMain,       '',            '',          '')
call <sid>hi('StorageClass',  s:gruberMain,       '',            '',          '')
call <sid>hi('String',        s:gruberGreen,      '',            '',          '')
call <sid>hi('Structure',     s:gruberMain,       '',            '',          '')
call <sid>hi('Todo',          s:gruberBG,         s:gruberMain,  '',          '')
call <sid>hi('Type',          s:gruberPurple,     '',            '',          '')
call <sid>hi('Typedef',       s:gruberPurple,     '',            '',          '')

call <sid>hi('SpellBad',      '',                 '',            'undercurl', '')
call <sid>hi('SpellLocal',    '',                 '',            'undercurl', '')
call <sid>hi('SpellCap',      '',                 '',            'undercurl', '')
call <sid>hi('SpellRare',     '',                 '',            'undercurl', '')

" Haskell Highlighting
call <sid>hi('hsTypeDef',     s:gruberMain,  '',  '',  '')
call <sid>hi('hsStructure',   s:gruberMain,  '',  '',  '')
call <sid>hi('hsStatement',   s:gruberMain,  '',  '',  '')
call <sid>hi('hsconditional', s:gruberMain,  '',  '',  '')

" Java Highlighting
call <sid>hi('javaConstant',    s:gruberPurple, '', '', '')
call <sid>hi('javaConditional', s:gruberMain,   '', '', '')
call <sid>hi('javaOperator',    s:gruberMain,   '', '', '')
call <sid>hi('javaExceptions',  s:gruberMain,   '', '', '')
call <sid>hi('javaAssert',      s:gruberMain,   '', '', '')
call <sid>hi('javaClassDecl',   s:gruberMain,   '', '', '')
call <sid>hi('javaBraces',      s:gruberFG,     '', '', '')
call <sid>hi('javaLangObject',  s:gruberFG,     '', '', '')
call <sid>hi('javaType',        s:gruberPurple, '', '', '')

" Python Highlighting
call <sid>hi('pythonRepeat',     s:gruberMain, '',  '',  '')
call <sid>hi('pythonOperator',   s:gruberMain, '',  '',  '')
call <sid>hi('pythonException',  s:gruberMain, '',  '',  '')

" Markdown Highlighting
call <sid>hi('markdownCode',               s:gruberGreen,   '',          '',          '')
call <sid>hi('markdownCodeBlock',          s:gruberGreen,   '',          '',          '')
call <sid>hi('markdownHeadingDelimiter',   s:gruberNiagara, '',          '',          '')
call <sid>hi('markdownItalic',             s:gruberPurple,  '',          s:italic,    '')
call <sid>hi('markdownBold',               s:gruberMain,    '',          s:bold,      '')
call <sid>hi('markdownCodeDelimiter',      s:gruberBrown,   '',          s:italic,    '')
call <sid>hi('markdownError',              s:gruberFG,      s:gruberBG1, '',          '')

" ALE Plugin Highlighting
call <sid>hi('ALEErrorSign',     s:gruberRed,   s:gruberBG2, s:bold, '')
call <sid>hi('ALEWarningSign',   s:gruberMain,  s:gruberBG2, s:bold, '')
call <sid>hi('ALEInfoSign',      s:gruberGreen, s:gruberBG2, s:bold, '')

" NERDTree Plugin Highlighting
call <sid>hi('NERDTreeExecFile',  s:gruberFG,      '',      '',  '')
call <sid>hi('NERDTreeDirSlash',  s:gruberNiagara, '',      '',  '')
call <sid>hi('NERDTreeOpenable',  s:gruberNiagara, '',      '',  '')
call <sid>hi('NERDTreeFile',      '',              s:none,  '',  '')
call <sid>hi('NERDTreeFlags',     s:gruberNiagara, '',      '',  '')

" Vimfiler Plugin Highlighting
call <sid>hi('vimfilerLeaf',        s:gruberFG,      '',          '',  '')
call <sid>hi('vimfilerNormalFile',  s:gruberFG,      s:gruberBG1, '',  '')
call <sid>hi('vimfilerOpenedFile',  s:gruberNiagara, '',          '',  '')
call <sid>hi('vimfilerClosedFile',  s:gruberNiagara, '',          '',  '')

" C/C++ Highlighting - Fixed and improved
call <sid>hi('cPreCondit',       s:gruberMain,       '',            '',          '')
call <sid>hi('cDefine',          s:gruberMain,       '',            '',          '')
call <sid>hi('cInclude',         s:gruberMain,       '',            '',          '')
call <sid>hi('cPreProc',         s:gruberMain,       '',            '',          '')
call <sid>hi('cConstant',        s:gruberPurple,     '',            '',          '')
call <sid>hi('cType',            s:gruberPurple,     '',            '',          '')
call <sid>hi('cStorageClass',    s:gruberMain,       '',            '',          '')
call <sid>hi('cStructure',       s:gruberMain,       '',            '',          '')
call <sid>hi('cTypedef',         s:gruberPurple,     '',            '',          '')
call <sid>hi('cStatement',       s:gruberMain,       '',            '',          '')
call <sid>hi('cConditional',     s:gruberMain,       '',            '',          '')
call <sid>hi('cRepeat',          s:gruberMain,       '',            '',          '')
call <sid>hi('cLabel',           s:gruberMain,       '',            '',          '')
call <sid>hi('cKeyword',         s:gruberMain,       '',            '',          '')
call <sid>hi('cOperator',        s:gruberFG,         '',            '',          '')
call <sid>hi('cString',          s:gruberGreen,      '',            '',          '')
call <sid>hi('cNumber',          s:gruberPurple,     '',            '',          '')
call <sid>hi('cFloat',           s:gruberPurple,     '',            '',          '')
call <sid>hi('cCharacter',       s:gruberGreen,      '',            '',          '')
call <sid>hi('cComment',         s:gruberBrown,      '',            s:italic,    '')
call <sid>hi('cCommentL',        s:gruberBrown,      '',            s:italic,    '')
call <sid>hi('cMulti',           s:gruberBrown,      '',            s:italic,    '')
call <sid>hi('cFunction',        s:gruberNiagara,    '',            '',          '')
call <sid>hi('cSpecial',         s:gruberMain,       '',            '',          '')
call <sid>hi('cSpecialCharacter', s:gruberMain,      '',            '',          '')
call <sid>hi('cBracket',         s:gruberFG,         '',            '',          '')
call <sid>hi('cParen',           s:gruberFG,         '',            '',          '')

" C++ specific highlighting
call <sid>hi('cppStatement',     s:gruberMain,       '',            '',          '')
call <sid>hi('cppAccess',        s:gruberMain,       '',            '',          '')
call <sid>hi('cppType',          s:gruberPurple,     '',            '',          '')
call <sid>hi('cppExceptions',    s:gruberMain,       '',            '',          '')
call <sid>hi('cppOperator',      s:gruberFG,         '',            '',          '')
call <sid>hi('cppCast',          s:gruberMain,       '',            '',          '')
call <sid>hi('cppStorageClass',  s:gruberMain,       '',            '',          '')
call <sid>hi('cppStructure',     s:gruberMain,       '',            '',          '')
call <sid>hi('cppNumber',        s:gruberPurple,     '',            '',          '')
call <sid>hi('cppBoolean',       s:gruberPurple,     '',            '',          '')

" Generic preprocessor highlighting (fallback)
call <sid>hi('PreCondit',        s:gruberMain,       '',            '',          '')
call <sid>hi('PreDefine',        s:gruberMain,       '',            '',          '')
call <sid>hi('PreUndef',         s:gruberMain,       '',            '',          '')
call <sid>hi('PreInclude',       s:gruberMain,       '',            '',          '')
call <sid>hi('PreError',         s:gruberMain,       '',            '',          '')
call <sid>hi('PrePragma',        s:gruberMain,       '',            '',          '')

" }}}

" Terminal colors
let g:terminal_color_0=s:gruberBG1[0]
let g:terminal_color_8=s:gruberBG1[0]

let g:terminal_color_1=s:gruberLightRed[0]
let g:terminal_color_9=s:gruberLightRed[0]

let g:terminal_color_2=s:gruberGreen[0]
let g:terminal_color_10=s:gruberGreen[0]

let g:terminal_color_3=s:gruberMain[0]
let g:terminal_color_11=s:gruberMain[0]

let g:terminal_color_4=s:gruberNiagara[0]
let g:terminal_color_12=s:gruberNiagara[0]

let g:terminal_color_5=s:gruberPurple[0]
let g:terminal_color_13=s:gruberPurple[0]

let g:terminal_color_6=s:gruberNiagara[0]
let g:terminal_color_14=s:gruberNiagara[0]

let g:terminal_color_7=s:gruberFG[0]
let g:terminal_color_15=s:gruberFG[0]

let g:terminal_color_background=s:gruberBG1[0]
let g:terminal_color_foreground=s:gruberWhite[0]
