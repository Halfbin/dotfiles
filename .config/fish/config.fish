if status -l
  if [ -n "$DISPLAY" ]
    xprofile
  end
end

# rk_fish_start hacks-in a kind of interactive -c option
if not status -l
  set runny $rk_fish_start
  set -u rk_fish_start
  if [ -n "$runny" ]
    fish -ic "exec $runny"
  end
end

