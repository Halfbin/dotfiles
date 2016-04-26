function fish_prompt
  set prev_stat $status

  set prompt_segs
  function add_seg
    set -g prompt_segs $prompt_segs "$argv"
  end

  # whoami
  add_seg (set_color --bold magenta; echo -n (whoami))

  # previous status
  if [ "$prev_stat" -ne 0 ]
    add_seg (set_color --bold red; echo -n "🗙 $prev_stat")
  end

  # add pwd segments
  set minipwd (echo -n $PWD | sed "s#^$HOME#~#; s#/#\n#g" | sed "/^\s*\$/d")
  if [ (count $minipwd) -eq 0 ];
    set minipwd "/"
  end

  for pwdseg in $minipwd
    add_seg (set_color --bold yellow; echo -n $pwdseg)
  end

  # git at the end
  set branch (git symbolic-ref --short HEAD ^/dev/null)
  if [ "$branch" ]
    add_seg (set_color --bold green; echo -n "🔀 $branch")
  end

  # got to match terminal
  set col_term 151c20
  set col_bar  2a373f

  # newline
  echo -ns (set_color normal) \n (set_color -b $col_bar)

  # print segments
  set first_seg yes
  for seg in $prompt_segs
    # print separator
    if [ -z "$first_seg" ]
      echo -ns (set_color $col_term) " "
    end

    # print text
    echo -n " $seg"
    set first_seg
  end

  # print end
  echo -ns " " (set_color $col_bar; set_color -b $col_term) 

  # prompt
  echo -s (set_color normal) \n "  ⛬ "
end
