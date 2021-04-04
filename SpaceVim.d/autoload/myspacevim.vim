function! myspacevim#before() abort
    let g:Tex_IgnoredWarnings = 
        \'Underfull'."\n".
        \'Overfull'."\n".
        \'specifier changed to'."\n".
        \'You have requested'."\n".
        \'Missing number, treated as zero.'."\n".
        \'There were undefined references'."\n".
        \'Citation %.%# undefined'."\n".
        \'Double space found.'."\n"
    let g:Tex_IgnoreLevel = 8
  let g:livepreview_previewer = 'zathura'
  let g:livepreview_cursorhold_recompile = 0
  let g:livepreview_use_biber = 1
  call SpaceVim#custom#SPCGroupName(['L'], '+LaTeXGroup')
  call SpaceVim#custom#SPC('nore', ['L', 'p'], 'LLPStartPreview', 'Start latex preview', 1)
  call SpaceVim#custom#SPC('nore', ['L', 'P'], 'LLPStartPreview /home/ald/Documents/Heriot-Watt/MSCPROJ/thesis/latex/main.tex', 'Start latex preview', 1)
  call SpaceVim#custom#SPC('nore', ['L', 'c'], '!latex-compile /home/ald/Documents/Heriot-Watt/MSCPROJ/thesis/latex/', 'Compile Thesis and open pdf', 1)
  call SpaceVim#custom#SPC('nore', ['L', 'C'], '!latex-preview /home/ald/Documents/Heriot-Watt/MSCPROJ/thesis/latex/', 'Compile Thesis', 1)

  call SpaceVim#custom#SPCGroupName(['M'], '+MarkdownGroup')
  call SpaceVim#custom#SPC('nore', ['M', 'p'], '!markdown_preview %', 'Start markdown preview', 1)
endfunction

function! myspacevim#after() abort
endfunction
