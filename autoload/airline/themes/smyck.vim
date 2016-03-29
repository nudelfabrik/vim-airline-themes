" Each theme is contained in its own file and declares variables scoped to the
" file.  These variables represent the possible "modes" that airline can
" detect.  The mode is the return value of mode(), which gets converted to a
" readable string.  The following is a list currently supported modes: normal,
" insert, replace, visual, and inactive.
"
" Each mode can also have overrides.  These are small changes to the mode that
" don't require a completely different look.  "modified" and "paste" are two
" such supported overrides.  These are simply suffixed to the major mode,
" separated by an underscore.  For example, "normal_modified" would be normal
" mode where the current buffer is modified.
"
" The theming algorithm is a 2-pass system where the mode will draw over all
" parts of the statusline, and then the override is applied after.  This means
" it is possible to specify a subset of the theme in overrides, as it will
" simply overwrite the previous colors.  If you want simultaneous overrides,
" then they will need to change different parts of the statusline so they do
" not conflict with each other.
"
" First, let's define an empty dictionary and assign it to the "palette"
" variable. The # is a separator that maps with the directory structure. If
" you get this wrong, Vim will complain loudly.
let g:airline#themes#smyck#palette = {}

" First let's define some arrays. The s: is just a VimL thing for scoping the
" variables to the current script. Without this, these variables would be
" declared globally. Now let's declare some colors for normal mode and add it
" to the dictionary.  The array is in the format:
" [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list" for valid
" values for the "opt" value.
let s:N1   = [ '#000000' , '#D1FA71' , 16  , 2 ]
let s:N2   = [ '#ffffff' , '#424242' , 255 , 238 ]
let s:N3   = [ '#96D9F1' , '#424242' , 12  , 234 ]
let g:airline#themes#smyck#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#smyck#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#smyck#palette.normal_modified = {
      \ 'airline_c': [ '#272727' , '' , 6    , '', ''     ] ,
      \ }


let s:I1 = [ '#000000' , '#96D9F1' , 16  , 12  ]
let s:I2 = [ '#ffffff' , '#424242' , 255 , 238 ]
let s:I3 = [ '#96D9F1' , '#424242' , 12  , 234 ]
let g:airline#themes#smyck#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#smyck#palette.insert_modified = {
      \ 'airline_c': [ '#272727' , '' , 6    , '', ''     ] ,
      \ }


let s:R1 = [ '#000000' , '#00dfff' , 16  , 1  ]
let s:R2 = [ '#ffffff' , '#424242' , 255 , 238 ]
let s:R3 = [ '#96D9F1' , '#424242' , 12  , 234 ]
let g:airline#themes#smyck#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#smyck#palette.replace_modified = {
      \ 'airline_c': [ '#272727' , '' , 6    , '', ''     ] ,
      \ }


let s:V1 = [ '#000000' , '#f6dc69' , 16 , 3 ]
let s:V2 = [ '#ffffff' , '#424242' , 255 , 238 ]
let s:V3 = [ '#96D9F1' , '#424242' , 12  , 234 ]
let g:airline#themes#smyck#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#smyck#palette.visual_modified = {
      \ 'airline_c': [ '#272727' , '' , 6    , '', ''     ] ,
      \ }


let s:IA1 = [ '#4e4e4e' , '#1c1c1c' , 245 , 234 , '' ]
let s:IA2 = [ '#4e4e4e' , '#262626' , 245 , 235 , '' ]
let s:IA3 = [ '#4e4e4e' , '#303030' , 245 , 236 , '' ]
let g:airline#themes#smyck#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#smyck#palette.inactive_modified = {
      \ 'airline_c': [ '#272727' , '' , 6    , '', ''     ] ,
      \ }


" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#smyck#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 1 , ''  ]
      \ }
