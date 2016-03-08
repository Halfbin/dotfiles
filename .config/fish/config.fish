if status -l
  if [ ! -x $DISPLAY ]
    xprofile
  end
end

# rk_fish_start hacks-in a kind of interactive -c option
if not status -l
  eval $rk_fish_start
end

