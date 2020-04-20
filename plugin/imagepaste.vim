if has('mac')

  function! imagepaste#paste()
    " TODO: check whether command pngpaste exists
    call inputsave()
    let name = input('Enter file name: ')
    call inputrestore()
    let ret = system("pngpaste" . " " .name . '.png')
    if v:shell_error
      echomsg "[Error] " . ret
      return
    endif
    let ret = system("mkdir img")
    if v:shell_error
      "echomsg "[Error] " . ret
      "return
    endif
    let ret = system("mv " . name . '.png' . ' img/' . name . '.png')
    if v:shell_error
      echomsg "[Error] " . ret
      return
    endif

    " TODO: overwrite check
    redraw
    echo printf("Clipboard image saved at img/%s ", name . '.png')

    " write to the current buffer
    let content = printf("![%s](%s)", name, 'img/' . name . '.png')
    put = content
  endfunction


  command! ImagePaste call imagepaste#paste()

endif
