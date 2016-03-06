function fish_prompt
	set prev_stat $status

  function show-prevstat
    if [ "$argv[1]" != "0" ]
      set_color --bold red
      echo -n "✗ "$argv[1]
    end
  end

  function show-who
    set_color --bold magenta
    echo -n (whoami)'@'(hostname)
  end

  function show-git
    set branch (git symbolic-ref --short HEAD 2>/dev/null)
    if [ "$branch" ]
      set_color --bold green
      echo -n " "$branch
    end
  end

  function show-pwd
    set_color --bold yellow
    rk-minipwd
  end

  set prompt_segs "show-prevstat $prev_stat" show-who show-git show-pwd
  set col_term 09090d
  set col_bar  202020

  set_color normal
  echo

	set_color -b $col_bar
  set first_seg 1

  for seg in $prompt_segs
    set seg_text (eval $seg)
    if [ -z "$seg_text" ]
      continue
    end

    if [ "$first_seg" != "0" ]
      echo -n " "
      set first_seg 0
    else
      set_color $col_term
      echo -n "  "
    end

    echo -n $seg_text
  end

  echo -n " "
  set_color $col_bar
  set_color -b $col_term
  echo -n 

  set_color normal
  echo
  echo -n "  \$ "
end
