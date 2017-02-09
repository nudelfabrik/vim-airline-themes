" vim-airline template by chartoin (http://github.com/chartoin)
" Base 16 Colors Scheme by mrmrs (http://clrs.cc)
let g:airline#themes#base16_smyck#palette = {}
let s:gui00 = "#000000"
let s:gui01 = "#c65640"
let s:gui02 = "#d1fa71"
let s:gui03 = "#cfb200"
let s:gui04 = "#73b2cf"
let s:gui05 = "#c79fd6"
let s:gui06 = "#258595"
let s:gui07 = "#b0b0b0"
let s:gui08 = "#8d8d8d"
let s:gui09 = "#df978e"
let s:gui0A = "#cef046"
let s:gui0B = "#ffe55f"
let s:gui0C = "#9dd8f3"
let s:gui0D = "#fab0ff"
let s:gui0E = "#79dfd8"
let s:gui0F = "#f9f9f9"

let s:cterm00 = 0
let s:cterm01 = 1
let s:cterm02 = 2
let s:cterm03 = 3
let s:cterm04 = 4
let s:cterm05 = 5
let s:cterm06 = 6
let s:cterm07 = 7
let s:cterm08 = 8
let s:cterm09 = 9
let s:cterm0A = 10
let s:cterm0B = 11
let s:cterm0C = 12
let s:cterm0D = 13
let s:cterm0E = 14
let s:cterm0F = 15

let s:N1   = [ '#000000' , '#D1FA71' , 16  , 2 ]
let s:N2   = [ '#ffffff' , '#424242' , 255 , 238 ]
let s:N3   = [ '#96D9F1' , '#424242' , 12  , 234 ]
let g:airline#themes#base16_smyck#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1 = [ '#000000' , '#96D9F1' , 16  , 12  ]
let s:I2 = [ '#ffffff' , '#424242' , 255 , 238 ]
let s:I3 = [ '#96D9F1' , '#424242' , 12  , 234 ]
let g:airline#themes#base16_smyck#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1 = [ '#000000' , '#00dfff' , 16  , 1  ]
let s:R2 = [ '#ffffff' , '#424242' , 255 , 238 ]
let s:R3 = [ '#96D9F1' , '#424242' , 12  , 234 ]
let g:airline#themes#base16_smyck#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1 = [ '#000000' , '#f6dc69' , 16 , 3 ]
let s:V2 = [ '#ffffff' , '#424242' , 255 , 238 ]
let s:V3 = [ '#96D9F1' , '#424242' , 12  , 234 ]
let g:airline#themes#base16_smyck#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1 = [ '#4e4e4e' , '#1c1c1c' , 245 , 234 , '' ]
let s:IA2 = [ '#4e4e4e' , '#262626' , 245 , 235 , '' ]
let s:IA3 = [ '#4e4e4e' , '#303030' , 245 , 236 , '' ]
let g:airline#themes#base16_smyck#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_smyck#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])
