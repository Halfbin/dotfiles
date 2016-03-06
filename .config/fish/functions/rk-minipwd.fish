function rk-minipwd
	# subst $HOME prefix with ~
  set result (echo $PWD | sed "s#^"$HOME"#~#")

  # grab our compacting parameters
	set -q rk_minipwd_end_len; or set -g rk_minipwd_end_len 8
  set endlen $rk_minipwd_end_len

  # regexes to match compactible segments
  set matchend "\([^/]\{"$endlen"\}\)"
  set matchseg "/"$matchend"[^/]\+"$matchend

  # compact segments
  echo $result | sed "s#"$matchseg"#/\1…\2#g"
end
