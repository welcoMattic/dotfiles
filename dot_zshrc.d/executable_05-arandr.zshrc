if [ xrandr | grep "DP-1 connected" ] 
then
    autorandr docked
else
    autorandr laptop
fi
