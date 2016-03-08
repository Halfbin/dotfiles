function dmenu
  # avoid recursion
  set command (which dmenu)
  eval $command -fn "OfficeCodePro-11:weight=medium" $argv
end
