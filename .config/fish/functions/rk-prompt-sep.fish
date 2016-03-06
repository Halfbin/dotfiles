function rk-prompt-sep
	if [ $argv[1] != 0 ]
    set_color $argv[3]
    set_color -b $argv[4]
    return
  end

	set_color $argv[2]
  set_color -b $argv[3]
  echo -n 
  set_color $argv[3]
  set_color -b $argv[4]
  echo -n 
end
