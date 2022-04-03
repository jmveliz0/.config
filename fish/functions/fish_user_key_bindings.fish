function fish_user_key_bindings
  # peco
  bind \cr peco_select_history # Bind for peco select history to Ctrl+R
  bind \cf peco_change_directory # Bind for peco change directory to Ctrl+F

  # vim-like
  # bind \cl forward-char

  fish_vi_key_bindings

  # bind ctrl + L to accept current autosuggestion
  bind \cl accept-autosuggestion
  
  # prevent iterm2 from closing when typing Ctrl-D (EOF)
  bind \cd delete-char

end
